class SolutionsController < ApplicationController
  def index
    @solutions = Solution.all
    render :template => 'solutions/index', :layout => 'ineedto'
  end

  # get all the solutions for a given verb and noun BUT NO extra this method
  # does NOT return solutions where there also an extra
  def get_for_noun_verb
    @device_type = params[:device_type] == 'mobile' ? 'mobile' : 'desktop'
    @verb = Verb.find_by_phrase(params[:verb])
    @noun = @verb.nouns.find_by_phrase(params[:noun])
    if @verb.nil? || @noun.nil? then
      flash[:error] = "Must provide valid verb and noun."
      redirect_to new_solution_path and return
    end
    @extra = ""
    @div_id = "solutions-" + (@noun.id).to_s + "-"  + @verb.id.to_s
    @back_to = "#nouns-" + @verb.id.to_s
    @solutions = Solution.find(:all, :conditions => "verb_id = #{ @verb.id } and noun_id = #{ @noun.id } and extra_id IS NULL")
    redirect_to solution_path(:id => @solutions[0].id, :back_to => @back_to, :device_type => 'mobile') and return if @solutions && @solutions.length == 1
    render :template => 'solutions/mobile', :layout => false and return if @device_type == 'mobile'
    render :template => 'solutions/list', :layout => false
  end

  # get all the solutions for a given verb and noun AND extra
  def get_for_extra_noun_verb
    render :text => "<option value='none'>No noun and/or verb given</option>" and return if params[:verb].nil? || params[:noun].nil?
    @device_type = params[:device_type] == 'mobile' ? 'mobile' : 'desktop'
    @verb = Verb.find_by_phrase(params[:verb])
    @noun = @verb.nouns.find_by_phrase(params[:noun])
    if @verb.nil? || @noun.nil? then
      flash[:error] = "Must provide valid verb and noun."
      redirect_to new_solution_path and return
    end
    @extra = @verb.extras.find_by_phrase(params[:extra], :conditions => "noun_id = '#{ @noun.id }'")
    @div_id = "solutions-" + (@extra.id).to_s + "-" + (@noun.id).to_s + "-" + (@verb.id).to_s
    @back_to =  "#extras-" + (@noun.id).to_s + "-" + (@verb.id).to_s
    @solutions = @extra.nil? ? [] : Solution.find(:all, :conditions => "verb_id = #{ @verb.id } and noun_id = #{ @noun.id } and extra_id = #{ @extra.id }")
    redirect_to solution_path(:id => @solutions[0].id, :back_to => @back_to, :device_type => 'mobile') and return if @solutions && @solutions.length == 1
    render :template => 'solutions/mobile', :layout => false and return if @device_type == 'mobile'
    render :template => 'solutions/list', :layout => false
  end
  
  def show
    @device_type = params[:device_type] == 'mobile' ? 'mobile' : 'desktop'
    @solution = Solution.find(params[:id])
    if @device_type == 'mobile'
      @div_id = "solution-" + @solution.id.to_s
      @back_to = "#" + params[:back_to]
      render :template => 'solutions/mobile_show', :layout => false and return
    end
  end
  
  def new
    @solution = Solution.new
    @verbs = Verb.all(:order => "phrase")
    @verbs_selection = @verbs.map {|v| [v.phrase, v.phrase]}
    render :template => 'solutions/new' and return
  end
  
  def create
    verb_phrase = params[:x][:verb]
    noun_phrase = params[:x][:noun_write_in] != "" ? params[:x][:noun_write_in] : params[:x][:noun]
    extra_phrase = params[:x][:extra_write_in] != "" ? params[:x][:extra_write_in] : params[:x][:extra]
    if verb_phrase == "" || noun_phrase == "" then
      flash[:error] = "You must provide at least a verb and a noun."
      redirect_to new_solution_path and return
    end
    verb = Verb.find_by_phrase(verb_phrase)
    noun = verb.nouns.find_by_phrase(noun_phrase)
    if verb.nil? || noun.nil?
      flash[:error] = "Must provide a valid verb and noun"
      rendirect_to new_solution_path and return
    end
    extra = nil
    unless extra_phrase.nil? || extra_phrase == "" || extra_phrase == "none"
      extra = verb.extras.find_by_phrase(extra_phrase, :conditions => "noun_id = '#{ noun.id }'")
      extra = Extra.create(:phrase => extra_phrase, :verb_id => verb.id, :noun_id => noun.id, :detail => params[:detail]) if  extra.nil?
    end
    @solution = Solution.create(params[:solution])
    unless @solution.nil?
      verb.solutions << @solution
      noun.solutions << @solution
      extra.solutions << @solution unless extra.nil?
      flash[:notice] = "Successfully created solution."
      redirect_to @solution and return
    else
      flash[:error] = "Unable to create new solution: reason unknown"
      rendirect_to new_solution_path and return
    end
  end
  
  def edit
    @solution = Solution.find(params[:id])
    @verb = Verb.find(@solution.verb_id)
    @noun = Noun.find(@solution.noun_id)
    @extra = @solution.extra_id.nil? ? nil : Extra.find(@solution.extra_id)
    render :template => 'solutions/edit' and return
  end
  
  def update
    @solution = Solution.find(params[:id])
    if @solution.update_attributes(params[:solution])
      flash[:notice] = "Successfully updated solution."
      redirect_to @solution
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @solution = Solution.find(params[:id])
    @solution.destroy
    flash[:notice] = "Successfully destroyed solution."
    redirect_to solutions_url
  end
end
