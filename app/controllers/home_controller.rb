class HomeController < ApplicationController
  include Utilities

  # figure out which device user has; set up data; render appropriate home screen
  def splash
    @phone, @prefix = classify_phone
    @items = case @prefix
    when 'webkit' then $WK_ITEMS
    when 'touch' then $TO_ITEMS
    when 'basic' then $BA_ITEMS
    end
    @theme = 'heu'
    render :template => 'home/splash', :layout => @prefix
  end

end
