class MacropostsController < ApplicationController
  # GET /macroposts
  # GET /macroposts.xml
  def index
    @macroposts = Macropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @macroposts }
    end
  end

  # GET /macroposts/1
  # GET /macroposts/1.xml
  def show
    @macropost = Macropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @macropost }
    end
  end

  # GET /macroposts/new
  # GET /macroposts/new.xml
  def new
    @macropost = Macropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @macropost }
    end
  end

  # GET /macroposts/1/edit
  def edit
    @macropost = Macropost.find(params[:id])
  end

  # POST /macroposts
  # POST /macroposts.xml
  def create
    @macropost = Macropost.new(params[:macropost])

    respond_to do |format|
      if @macropost.save
        format.html { redirect_to(@macropost, :notice => 'Macropost was successfully created.') }
        format.xml  { render :xml => @macropost, :status => :created, :location => @macropost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @macropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /macroposts/1
  # PUT /macroposts/1.xml
  def update
    @macropost = Macropost.find(params[:id])

    respond_to do |format|
      if @macropost.update_attributes(params[:macropost])
        format.html { redirect_to(@macropost, :notice => 'Macropost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @macropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /macroposts/1
  # DELETE /macroposts/1.xml
  def destroy
    @macropost = Macropost.find(params[:id])
    @macropost.destroy

    respond_to do |format|
      format.html { redirect_to(macroposts_url) }
      format.xml  { head :ok }
    end
  end
end
