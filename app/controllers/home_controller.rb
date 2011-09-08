class HomeController < ApplicationController
  layout "home"        
  respond_to :js, :html, :xml                                                                        
  
  def index
    @brands = Brand.all
    @brand = Brand.new
    @model = Model.new
    
  end
  
  def search
  end
  
  def filter_models
    @brand = Brand.find(params[:id])
    respond_with @brand
  end
  
  def filter_years
    @model = Model.find(params[:id])
    respond_with @model
  end
      
end
