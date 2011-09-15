class PagesController < ApplicationController
  def home
    @title = 'Home'
  end

  def contact
    @title = 'Contact'
  end

  def about
    @title = "About"
  end

  def partners
    @title = "Partners"
  end

  def projects
    @title = "Projects"
  end

end
