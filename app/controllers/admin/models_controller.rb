class Admin::ModelsController < ApplicationController
  # GET /admin/models
  # GET /admin/models.xml
  def index
    @models = Model.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @models }
    end
  end

  # GET /admin/models/1
  # GET /admin/models/1.xml
  def show
    @model = Model.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @model }
    end
  end

  # GET /admin/models/new
  # GET /admin/models/new.xml
  def new
    @model = Model.new
    @brands = Brand.all

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @model }
    end
  end

  # GET /admin/models/1/edit
  def edit
    @model = Model.find(params[:id])
    @brands = Brand.all
  end

  # POST /admin/models
  # POST /admin/models.xml
  def create
    @model = Model.new(params[:model])

    respond_to do |format|
      if @model.save
        format.html { redirect_to(admin_models_path, :notice => 'Model was successfully created.') }
        format.xml  { render :xml => @model, :status => :created, :location => @model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/models/1
  # PUT /admin/models/1.xml
  def update
    @model = Model.find(params[:id])
    
    respond_to do |format|
      if @model.update_attributes(params[:model])
        format.html { redirect_to(admin_model_path(@model), :notice => 'Model was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/models/1
  # DELETE /admin/models/1.xml
  def destroy
    @model = Model.find(params[:id])
    @model.destroy

    respond_to do |format|
      format.html { redirect_to(admin_models_path) }
      format.xml  { head :ok }
    end
  end
end
