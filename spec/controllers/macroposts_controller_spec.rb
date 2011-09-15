require 'spec_helper'

describe MacropostsController do

  def mock_macropost(stubs={})
    (@mock_macropost ||= mock_model(Macropost).as_null_object).tap do |macropost|
      macropost.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all macroposts as @macroposts" do
      Macropost.stub(:all) { [mock_macropost] }
      get :index
      assigns(:macroposts).should eq([mock_macropost])
    end
  end

  describe "GET show" do
    it "assigns the requested macropost as @macropost" do
      Macropost.stub(:find).with("37") { mock_macropost }
      get :show, :id => "37"
      assigns(:macropost).should be(mock_macropost)
    end
  end

  describe "GET new" do
    it "assigns a new macropost as @macropost" do
      Macropost.stub(:new) { mock_macropost }
      get :new
      assigns(:macropost).should be(mock_macropost)
    end
  end

  describe "GET edit" do
    it "assigns the requested macropost as @macropost" do
      Macropost.stub(:find).with("37") { mock_macropost }
      get :edit, :id => "37"
      assigns(:macropost).should be(mock_macropost)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created macropost as @macropost" do
        Macropost.stub(:new).with({'these' => 'params'}) { mock_macropost(:save => true) }
        post :create, :macropost => {'these' => 'params'}
        assigns(:macropost).should be(mock_macropost)
      end

      it "redirects to the created macropost" do
        Macropost.stub(:new) { mock_macropost(:save => true) }
        post :create, :macropost => {}
        response.should redirect_to(macropost_url(mock_macropost))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved macropost as @macropost" do
        Macropost.stub(:new).with({'these' => 'params'}) { mock_macropost(:save => false) }
        post :create, :macropost => {'these' => 'params'}
        assigns(:macropost).should be(mock_macropost)
      end

      it "re-renders the 'new' template" do
        Macropost.stub(:new) { mock_macropost(:save => false) }
        post :create, :macropost => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested macropost" do
        Macropost.should_receive(:find).with("37") { mock_macropost }
        mock_macropost.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :macropost => {'these' => 'params'}
      end

      it "assigns the requested macropost as @macropost" do
        Macropost.stub(:find) { mock_macropost(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:macropost).should be(mock_macropost)
      end

      it "redirects to the macropost" do
        Macropost.stub(:find) { mock_macropost(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(macropost_url(mock_macropost))
      end
    end

    describe "with invalid params" do
      it "assigns the macropost as @macropost" do
        Macropost.stub(:find) { mock_macropost(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:macropost).should be(mock_macropost)
      end

      it "re-renders the 'edit' template" do
        Macropost.stub(:find) { mock_macropost(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested macropost" do
      Macropost.should_receive(:find).with("37") { mock_macropost }
      mock_macropost.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the macroposts list" do
      Macropost.stub(:find) { mock_macropost }
      delete :destroy, :id => "1"
      response.should redirect_to(macroposts_url)
    end
  end

end
