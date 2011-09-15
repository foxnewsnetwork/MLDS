module ApplicationHelper

  def home_path
    '/'
  end
  
  def about_path
    '/about'
  end
  
  def contact_path
    '/contact'
  end
  
  def projects_path
    '/projects'
  end
  
  def partners_path
    '/partners'
  end 
  
  
  def title
    base_title = "M-L-D-S"
    if @title.nil?
      return @base_title
    else
      return "#{base_title} | #{@title}"
    end
  end
  
  def pic_scroll
    outside_link = 'http://i299.photobucket.com/albums/mm281/foxnewsnetwork/largelogo-1.png'
    image_tag( outside_link , :alt => "Moonlight Dreamscape large logo", :class => "round" )
  end
  
  def logo
    outside_link = 'http://i299.photobucket.com/albums/mm281/foxnewsnetwork/logo.png'
    image_tag( outside_link, :alt => "Moonlight Dreamscape logo", :class => "round" )
  end
end
