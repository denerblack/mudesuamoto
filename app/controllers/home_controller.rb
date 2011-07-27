class HomeController < ApplicationController
  def index
    @brands = Brand.all
  end

end
