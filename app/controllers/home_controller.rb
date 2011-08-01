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
    respond_to do |f|
      f.js
    end
    # render :action => "filter_models.js.rb"
  end
  
  def filter_years
    @model = Model.find(params[:id])
    respond_to do |f|
      f.js
    end
  end
      
end
