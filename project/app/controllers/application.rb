class ApplicationController < ActionController::Base
   layout:get_layout
   
   def login
      
      #allow this to access Login Form from the database
      @page = PageContent.find_by_pg_name('login')
      
      session[:user_id] = nil
      
      if request.post?
        user = User.authenticate(params[:username], params[:password])
        if user
          session[:user_id] = user.user_id
          session[:username] = user.username
          #add the user's full name from the Person obj
          
          # the next two statements have been added to allow users to go back to their requested page
          uri = session[:original_uri]
          session[:original_uri] = nil
          
          redirect_to(uri ||{ :action =>'home' })
          flash[:notice] = "Welcome #{user.username}, you have succesfully logged in"
          
        else
          flash[:notice] = "Invalid user/password combination"
        end
      end
  end
  
  def logout
      session[:user_id] = nil
      flash[:notice] = "You have logged out"
      redirect_to(:controller =>'viewer', :action =>'show', :name =>'index')      
  end
  
  #==========================================================================
  #
  #   This section contains some private methods:
  #
  #      authorize:     enforces the user to login when visiting admin pages
  #
  #      get_layout:    determines the layout to be used according as 
  #                     to whether the user is logged in  
  #==========================================================================
  private
  
  def authorize
     unless User.find_by_user_id(session[:user_id])
       session[:original_uri] = request.request_uri
       flash[:notice] = "Please log in"
       redirect_to(:controller => "viewer" , :action => "show", :name=> "login" )
     end
  end
  
 def get_layout
     if session[:user_id] 
         "admin"   
      else
         "application"
     end
  end
end

