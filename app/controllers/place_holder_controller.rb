class PlaceHolderController < ApplicationController
  def emergency
    @id_text = 'emergency'
    render :template => 'place_holder/general', :layout => false
  end

  def calendar
    @id_text = 'calendar'
    render :template => 'place_holder/general', :layout => false
  end

  def map
    @id_text = 'map'
    render :template => 'place_holder/general', :layout => false
  end

  def athletics
    @id_text = 'athletics'
    render :template => 'place_holder/general', :layout => false
  end

  def directory
    @id_text = 'directory'
    render :template => 'place_holder/general', :layout => false
  end

  def libraries
    @id_text = 'libraries'
    render :template => 'place_holder/general', :layout => false
  end

  def transport
    @id_text = 'transport'
    render :template => 'place_holder/general', :layout => false
  end

  def office_hours
    @id_text = 'office_hours'
    render :template => 'place_holder/general', :layout => false
  end

  def news
    @id_text = 'news'
    render :template => 'place_holder/general', :layout => false
  end

  def video
    @id_text = 'video'
    render :template => 'place_holder/general', :layout => false
  end

  def full_site
    @id_text = 'full_site'
    render :template => 'place_holder/general', :layout => false
  end

  def links
    @id_text = 'links'
    render :template => 'place_holder/general', :layout => false
    
  end

  def bookmark
    @id_text = 'bookmark'
    render :template => 'place_holder/general', :layout => false
  end

  def activate
    @id_text = 'activate'
    render :template => 'place_holder/general', :layout => false

  end

  def learn
    @id_text = 'learn'
    render :template => 'place_holder/general', :layout => false

  end

  def apply
    @id_text = 'apply'
    render :template => 'place_holder/general', :layout => false

  end

  def find
    @id_text = 'find'
    render :template => 'place_holder/general', :layout => false

  end

  def pay
    @id_text = 'pay'
    render :template => 'place_holder/general', :layout => false

  end

  def report
    @id_text = 'report'
    render :template => 'place_holder/general', :layout => false

  end

  def reserve
    @id_text = 'reserve'
    render :template => 'place_holder/general', :layout => false

  end
end
