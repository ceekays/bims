class PageContentsController < ApplicationController
     layout "admin"
     before_filter :authorize, :except => :login
  # GET /page_contents
  # GET /page_contents.xml
  def index
    @page_contents = PageContent.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @page_contents }
    end
  end

  # GET /page_contents/1
  # GET /page_contents/1.xml
  def show
    @page_content = PageContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page_content }
    end
  end

  # GET /page_contents/new
  # GET /page_contents/new.xml
  def new
    @page_content = PageContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page_content }
    end
  end

  # GET /page_contents/1/edit
  def edit
    @page_content = PageContent.find(params[:id])
  end

  # POST /page_contents
  # POST /page_contents.xml
  def create
    raise 'aaa'  
    @page_content = PageContent.new(params[:page_content])

    respond_to do |format|
      if @page_content.save
        flash[:notice] = 'PageContent was successfully created.'
        format.html { redirect_to(@page_content) }
        format.xml  { render :xml => @page_content, :status => :created, :location => @page_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /page_contents/1
  # PUT /page_contents/1.xml
  def update
    @page_content = PageContent.find(params[:id])

    respond_to do |format|
      if @page_content.update_attributes(params[:page_content])
        flash[:notice] = 'PageContent was successfully updated.'
        format.html { redirect_to(@page_content) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /page_contents/1
  # DELETE /page_contents/1.xml
  def destroy
    @page_content = PageContent.find(params[:id])
    @page_content.destroy

    respond_to do |format|
      format.html { redirect_to(page_contents_url) }
      format.xml  { head :ok }
    end
  end
end
