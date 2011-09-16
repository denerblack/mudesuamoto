class Admin::ServicesController < ApplicationController
  # GET /admin/services
  # GET /admin/services.xml
  def index
    @services = Service.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @services }
    end
  end

  # GET /admin/services/1
  # GET /admin/services/1.xml
  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /admin/services/new
  # GET /admin/services/new.xml
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service }
    end
  end
  
  def suggest_parts
    @parts = Part.all
    respond_with @parts
  end

  # GET /admin/services/1/edit
  def edit
    @service = Service.find(params[:id])
    # @parts = Part.where('id NOT IN (?)',ServicesPart.find_by_service_id(1)).all
    @parts = Array.new   
    # @parts = Part.all.collect{|part| @parts << part.hash_part}[0].to_json.html_safe
    parts = Part.where('id NOT IN (?)',ServicesPart.find_by_service_id(@service.id)).all
    @parts = (parts.empty? ? Part.all : parts).collect{|part| @parts << part.hash_part}[0].to_json.html_safe
    # puts @parts
  end

  # POST /admin/services
  # POST /admin/services.xml
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        format.html { redirect_to(admin_service_path(@service), :notice => 'Service was successfully created.') }
        format.xml  { render :xml => @service, :status => :created, :location => @service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/services/1
  # PUT /admin/services/1.xml
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        @service.add_parts(params[:parts])
        format.html { redirect_to(admin_service_path(@service), :notice => 'Service was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # DELETE /admin/services/1
  # DELETE /admin/services/1.xml
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to(admin_services_url) }
      format.xml  { head :ok }
    end
  end
end
