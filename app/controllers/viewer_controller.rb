class ViewerController < ApplicationController
#  before_filter :access
  def show
      @page = PageContent.find_by_pg_name(params[:name])
      
      
      if @page && @page.pg_name == 'login'
        login
      end
  end
end
