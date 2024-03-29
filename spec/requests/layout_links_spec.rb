require 'spec_helper'
require 'factories'

describe "LayoutLinks" do

#  describe "GET /layout_links" do
#    it "works! (now write some real specs)" do
#      get layout_links_path
#    end
#  end
  
  describe "when not signed in" do
    
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path ,
                                          :content => "Admin" )
    end
    
  end
  
  describe "when signed in" do
    
    before(:each) do
      @user = Factory(:user)
      visit signin_path
      fill_in :email, :with => @user.email
      fill_in :password, :with => @user.password
      click_button
    end
    
    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path ,
                                         :content => "Sign out" )
    end
    
    it "should have a profile link" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user), :content => "Profile")
    end
  end
  
  it "should have a home page at '/'" do
    get '/'
    response.should have_selector( 'title' , :content => 'Home' )
  end
  
  it "should have an about page at '/about'" do
    get '/about'
    response.should have_selector( 'title' , :content => 'About' )
  end
  
  it "should have an update page at '/update'" do
    get '/updates'
    response.should have_selector( 'title' , :content => 'Updates' )
  end
  
  it "should have a contact page at '/contact'" do
    get '/contact'
    response.should have_selector( 'title' , :content => 'Contact' )
  end
 
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector( 'title', :content => 'Sign up' )
  end 
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    response.should have_selector("title" , :content => "About")
    click_link "Updates"
    response.should have_selector("title" , :content => "Updates")
    click_link "Contact"
    response.should have_selector("title" , :content => "Contact")
#    click_link "Signup"
#    response.should have_selector("title" , :content => "Sign up")
  end
end
