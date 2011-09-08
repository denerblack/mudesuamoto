require 'spec_helper'

describe "home/index.html.erb" do
  before(:each) do
    assign(:brands,[stub_model(Brand,:name => "Honda"),stub_model(Brand, :name => "Yamaha")]) 
    @models = assign(:models,[stub_model(Model,:name => "Biz", :brand_id => 1),stub_model(Model, :name => "CG", :brand_id => 1)])
    assign(:brand, stub_model(Brand, :name => "Honda", :models => @models)) 
    @years = assign(:years,[stub_model(Year,:year => "2010"),stub_model(Year, :name => "2011")]) 
    assign(:model, stub_model(Model,:name => "Biz", :brand_id => 1, :years => @years))    
  end
  
  it "renders home" do
    
    #TODO essa porra não ta funcionando
    
    render
      have_form("dunha","post") do
        # assert_select "form",:id => 'form_1', :action => "/search", :method => "post" do
        assert_select "select#brands", :name => "brands"
        assert_select "select#models", :name => "models"
        assert_select "select#years", :name => "years"
      end
  end
end
