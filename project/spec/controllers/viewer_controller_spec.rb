require File.dirname(__FILE__) + '/../spec_helper'

describe "The", ViewerController do
  integrate_views
=begin
  it "should open an index" do
    get:index
    response.should be_success
  end
=end

  
  it "should be an instance of ViewerController" do
    controller.should be_an_instance_of ViewerController
  end
  
  it "should exist" do
    #@page_to_open =  PageContent.new
    #@page_to_open.class.should equal PageContent
    
    get :show, :name => 'home'
    
    response.body.should_not include('My Home')
    
    pg = PageContent.new(:pg_name => 'home', 
                          :pg_title =>'This is My Home',
                          :pg_heading => 'Welcome to Rails')
                          
    pg.save
    get :show, :name => 'home'                      
    response.body.should include('My Home')
    #response.body.should =~ /Welcome/
  end 
  
=begin
  it "should find a page by the name given in the params[:name]" do  
    @page = %w{home about contact login adduser }
    
    @page.each do |pgname|     
    p 'page: '+ pgname
      get :show,:name => pgname
      # it is often diff to verify the 
      
      #response.should be_success
      response.should have_text()
    end
=end
end
