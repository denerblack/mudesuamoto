class Admin::YearsController < ApplicationController
  # GET /admin/years
  # GET /admin/years.xml
  def index
    @years = Year.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @years }
    end
  end

  # GET /admin/years/1
  # GET /admin/years/1.xml
  def show
    @year = Year.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @year }
    end
  end

  # GET /admin/years/new
  # GET /admin/years/new.xml
  def new
    @year = Year.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @year }
    end
  end

  # GET /admin/years/1/edit
  def edit
    @year = Year.find(params[:id])
  end

  # POST /admin/years
  # POST /admin/years.xml
  def create
    @year = Year.new(params[:year])

    respond_to do |format|
      if @year.save
        format.html { redirect_to(admin_years_path, :notice => 'Year was successfully created.') }
        format.xml  { render :xml => @year, :status => :created, :location => @year }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/years/1
  # PUT /admin/years/1.xml
  def update
    @year = Year.find(params[:id])

    respond_to do |format|
      if @year.update_attributes(params[:year])
        format.html { redirect_to(admin_years_path, :notice => 'Year was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @year.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/years/1
  # DELETE /admin/years/1.xml
  def destroy
    @year = Year.find(params[:id])
    @year.destroy

    respond_to do |format|
      format.html { redirect_to(admin_years_path) }
      format.xml  { head :ok }
    end
  end
end
