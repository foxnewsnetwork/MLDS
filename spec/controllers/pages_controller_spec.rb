require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "M-L-D-S | "
  end
  
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector( "title" , :content => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_selector( "title" , :content => @base_title + "Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      response.should have_selector( "title" , :content => @base_title + "About")
    end
  end

  describe "GET 'partners'" do
    it "should be successful" do
      get 'partners'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'partners'
      response.should have_selector( "title" , :content => @base_title + "Partners")
    end
  end

  describe "GET 'projects'" do
    it "should be successful" do
      get 'projects'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'projects'
      response.should have_selector( "title" , :content => @base_title + "Projects")
    end
  end

end
