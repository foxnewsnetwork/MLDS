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
    image_tag( "largelogo.png" , :alt => "Moonlight Dreamscape large logo", :class => "round" )
  end
  
  def logo
    image_tag( "logo.png", :alt => "Moonlight Dreamscape logo", :class => "round" )
  end
end
