require File.dirname(__FILE__) + '/../spec_helper'

describe 'The', UserController do
    integrate_views

    it 'should be an instance of UserController' do
        controller.should be_an_instance_of UserController
    end

    it 'should not exist, since the user has not logged in' do    
    
        u = User.new
        response.should_not be_success
    end 
    
    it 'should not save, since the user has not logged in' do    
        u = User.new
        u.save.should be_false
        #response.should be_success
    end 

    it 'should ask a person to login' do
#        controller_name:user
        get :add_user
        response.should redirect_to('login')
    end
    
   # it 'should aunthenticate the user' do
    #    u = User.authenticate('ceekays',' ') 
     #   u.errors.puts 'invalid user'       
      #  response.should_not be_success
    #end
    
    it 'should send authorization request to the gateway' do
     
    end

end
