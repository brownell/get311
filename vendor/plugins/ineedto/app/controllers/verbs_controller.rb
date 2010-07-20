class VerbsController < ApplicationController
  def index
    @verbs = Verb.all
  end
  
  def show
    @verb = Verb.find(params[:id])
  end
  
  def new
    @verb = Verb.new
  end
  
  def create
    @verb = Verb.new(params[:verb])
    if @verb.save
      flash[:notice] = "Successfully created verb."
      redirect_to @verb
    else
      render :action => 'new'
    end
  end
  
  def edit
    @verb = Verb.find(params[:id])
  end
  
  def update
    @verb = Verb.find(params[:id])
    if @verb.update_attributes(params[:verb])
      flash[:notice] = "Successfully updated verb."
      redirect_to @verb
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @verb = Verb.find(params[:id])
    nouns = @verb.nouns
    extras = @verb.extras
    solutions = @verb.extras
    solutions.destroy_all
    extras.destroy_all
    nouns.destroy_all
    @verb.destroy
    flash[:notice] = "Successfully destroyed verb."
    redirect_to verbs_url
  end
end
