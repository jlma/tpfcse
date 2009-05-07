class OfficersController < ApplicationController
 # filters
    before_filter :set_pagetitle, :except => [:list]
    before_filter :login_required, :except => [:list, :show]

  def set_pagetitle
    @pagetitle = 'Page Administration'
  end

  # GET /officers
  # GET /officers.xml
  def index
    @officers = Officer.find(:all)
    @clubs = Club.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @officers }
    end
  end

	def list
    @pagetitle = 'Club Officers'
    @officers = Officer.find(:all)
    @clubs = Club.find(:all, :order => 'state')
  end

  # GET /officers/1
  # GET /officers/1.xml
  def show
    @officer = Officer.find(params[:id])
    @clubs = Club.find(:all)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @officer }
    end
  end

  # GET /officers/new
  # GET /officers/new.xml
  def new
    @officer = Officer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @officer }
    end
  end

  # GET /officers/1/edit
  def edit
    @officer = Officer.find(params[:id])
  end

  # POST /officers
  # POST /officers.xml
  def create
    @officer = Officer.new(params[:officer])

    respond_to do |format|
      if @officer.save
        flash[:notice] = 'Officer was successfully created.'
        format.html { redirect_to(@officer) }
        format.xml  { render :xml => @officer, :status => :created, :location => @officer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @officer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /officers/1
  # PUT /officers/1.xml
  def update
    @officer = Officer.find(params[:id])

    respond_to do |format|
      if @officer.update_attributes(params[:officer])
        flash[:notice] = 'Officer was successfully updated.'
        format.html { redirect_to(@officer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @officer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /officers/1
  # DELETE /officers/1.xml
  def destroy
    @officer = Officer.find(params[:id])
    @officer.destroy

    respond_to do |format|
      format.html { redirect_to(officers_url) }
      format.xml  { head :ok }
    end
  end
end
