class LandingPageController < ApplicationController
  def index
    @landing_page = LandingPage.new
  end

  def create
    @landing_page =  LandingPage.new(params[:landing_page])
    respond_to do |format|
    if @landing_page.save
      format.html { redirect_to("/", :notice => 'Email cadastrado com sucesso.') }
      format.xml  { render :xml => @landing_page, :status => :created, :location => @landing_page }
    else
      format.html { render :action => "index" }
      format.xml  { render :xml => @landing_page.errors, :status => :unprocessable_entity }
    end
  end
  end

end
