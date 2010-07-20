class PlaceHolderController < ApplicationController
  def emergency
    @id_text = 'Emergency'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def calendar
    @id_text = 'Calendar'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def map
    @id_text = 'Map'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def pay
    @id_text = 'pay'
    @title_text = 'Pay fine or fee'
    render :template => 'place_holder/general', :layout => false
  end

  def help
    @id_text = 'Help'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def departments
    @id_text = 'Departments'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def libraries
    @id_text = 'Libraries'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def transport
    @id_text = 'Transport'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def jobs
    @id_text = 'jobs'
    @title_text = 'City jobs'
    render :template => 'place_holder/general', :layout => false
  end

  def news
    @id_text = 'News'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def visitors
    @id_text = 'Visitors'
    @title_text = 'Visitor info'
    render :template => 'place_holder/general', :layout => false
  end

  def three11
    @id_text = '3-1-1'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def links
    @id_text = 'links'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
    
  end

  def bookmark
    @id_text = 'Bookmark'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def enroll
    @id_text = 'Enroll'
    @title_text = 'Enroll, apply'
    render :template => 'place_holder/general', :layout => false

  end

  def learn
    @id_text = 'Learn'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false

  end

  def animals
    @id_text = 'Animals'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false

  end

  def howto
    @id_text = 'Find'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false

  end

  def notify
    @id_text = 'Notify'
    @title_text =  'Notify the city'
    render :template => 'place_holder/general', :layout => false

  end

  def parks
    @id_text = 'Parks'
    @title_text = @id_text
    render :template => 'place_holder/general', :layout => false
  end

  def help
    @id_text = params[:txt]
    render :template => 'place_holder/help', :layout => false
  end

  def coming
    @id_text = ''
    render :template => 'place_holder/coming', :layout => false
  end
end
