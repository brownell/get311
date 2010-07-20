class NounsController < ApplicationController
  def index
    @nouns = Noun.all
  end

  #get all the nouns for a given verb
  def get_for_verb
    render :text => "<option value='none'>No verb given</option>" and return if params[:verb].nil?
    @device_type = params[:device_type] == 'mobile' ? 'mobile' : 'desktop'
    @verb = Verb.find_by_phrase(params[:verb])
    render :text => "<option value='none'>No nouns for #{ params[:verb]}</option>" and return if @verb.nil? or @verb == []
    @nouns = @verb.nouns(:order => 'phrase')
    render :text => "<option value='none'>No nouns for #{ params[:verb]}</option>" and return if @nouns.nil? or @nouns == []
    output = '<option value="none"></option>'
    @nouns.each do |n|
      add = '<option value="' + n.phrase + '">' + n.phrase + '</option>'
      output = output + add
    end
    render :template => 'nouns/mobile', :layout => false and return if @device_type == 'mobile'
    render :text => output, :layout => false and return
  end
  
  def show
    @noun = Noun.find(params[:id])
  end
  
  def edit
    @noun = Noun.find(params[:id])
    @verb = Verb.find(@noun.verb_id)
  end
  
  def update
    @noun = Noun.find(params[:id])
    if @noun.update_attributes(params[:noun])
      flash[:notice] = "Successfully updated noun."
      redirect_to @noun
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @noun = Noun.find(params[:id])
    extras = @noun.extras
    solutions = @noun.solutions
    solutions.destroy_all
    extras.destroy_all
    @noun.destroy
    flash[:notice] = "Successfully destroyed noun."
    redirect_to nouns_url
  end
end
