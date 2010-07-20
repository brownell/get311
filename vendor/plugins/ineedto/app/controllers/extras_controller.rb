class ExtrasController < ApplicationController
  def index
    @extras = Extra.all
  end

  # #get all the extras for a given verb and noun
  def get_for_noun_verb
    render :text => "<option value='none'>No noun and/or verb given</option>" and return if params[:verb].nil? || params[:noun].nil?
    @device_type = params[:device_type] == 'mobile' ? 'mobile' : 'desktop'
    @verb = Verb.find_by_phrase(params[:verb])
    @noun = @verb.nouns.find_by_phrase(params[:noun])
    @noun = Noun.create(:phrase => params[:noun], :verb_id => @verb.id) if @noun.nil?
    @noun.save
    output = '<option value="none"></option>'
    @extras = Extra.find(:all, :conditions => "verb_id = #{ @verb.id } and noun_id = #{ @noun.id }", :order => 'phrase')
    if @extras == [] && @device_type != 'mobile' then
      render :text => output, :layout => false and return if (@solutions.nil? || @solutions == [])
      render :text => '', :status => 404 and return
    end
    @extras.each do |e|
      add = '<option value="' + e.phrase + '">' + e.phrase + '</option>'
      output = output + add
    end
    if @device_type == 'mobile'
      @solutions = Solution.find(:all, :conditions => "verb_id = #{ @verb.id } and noun_id = #{ @noun.id } and extra_id IS NULL")
      @div_id = "extras-" + (@noun.id).to_s + "-" + (@verb.id).to_s
      @back_to = "noun-" + @verb.id.to_s
      redirect_to solution_path(:id => @solutions[0].id, :back_to => @back_to, :device_type => 'mobile') and return if @solutions && @solutions.length == 1 && @extras == []
      render :template => 'extras/mobile', :layout => false and return
    end
    render :text => output, :layout => false and return
    
  end
  
  def show
    @extra = Extra.find(params[:id])
  end
  
  def edit
    @extra = Extra.find(params[:id])
    @verb = Verb.find(@extra.verb_id)
    @noun = Noun.find(@extra.noun_id)
  end
  
  def update
    @extra = Extra.find(params[:id])
    if @extra.update_attributes(params[:extra])
      flash[:notice] = "Successfully updated extra."
      redirect_to @extra
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @extra = Extra.find(params[:id])
    solutions = @extra.solutions
    solutions.destroy_all
    @extra.destroy
    flash[:notice] = "Successfully destroyed extra."
    redirect_to extras_url
  end
end
