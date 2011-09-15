require "spec_helper"

describe MacropostsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/macroposts" }.should route_to(:controller => "macroposts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/macroposts/new" }.should route_to(:controller => "macroposts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/macroposts/1" }.should route_to(:controller => "macroposts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/macroposts/1/edit" }.should route_to(:controller => "macroposts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/macroposts" }.should route_to(:controller => "macroposts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/macroposts/1" }.should route_to(:controller => "macroposts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/macroposts/1" }.should route_to(:controller => "macroposts", :action => "destroy", :id => "1")
    end

  end
end
