class UserFacingController < ApplicationController

  include Utilities

  def starting_point
    puts request.user_agent
    @verbs = Verb.all(:order => "phrase")
    @verbs_selection = [["-- Select a Verb --", "none"]] + @verbs.map {|v| [v.phrase, v.phrase]}
    @solution = Solution.new
    category, ua_string = get_user_agent
    render :template => 'user_facing/mobile', :layout => false and return unless ['unknown', 'dumber'].include? category
  end
end
