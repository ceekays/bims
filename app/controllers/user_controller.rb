class UserController < ApplicationController
 
  before_filter :authorize, :except => :login

  def add_user
     @pagetitle = " Baobab Inventory Management System: Add User Page"
     @my_title = "Adding Users Form "               
     @user = User.new(params[:users])
     # @user.date_created = Time.now
     # @user.creator = 1
     # @user.person_id = 3
     
     if request.post? && @user.save
          #redirect_to(:action => "index")
          flash[:notice] = "User #{@user.username} created"
          @user = User.new
     end
  end
  
  def delete_user
  end

  def list_users
   @all_users = User.find(:all)
  end
end
