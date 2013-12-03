class ApiVersionsController < ApplicationController
  # GET /api_versions
  # GET /api_versions.xml
  def index
    @api_versions = ApiVersion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @api_versions }
    end
  end

  # GET /api_versions/1
  # GET /api_versions/1.xml
  def show
    @api_version = ApiVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @api_version }
    end
  end

  # GET /api_versions/new
  # GET /api_versions/new.xml
  def new
    @api_version = ApiVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @api_version }
    end
  end

  # GET /api_versions/1/edit
  def edit
    @api_version = ApiVersion.find(params[:id])
  end

  # POST /api_versions
  # POST /api_versions.xml
  def create
    @api_version = ApiVersion.new(params[:api_version])

    respond_to do |format|
      if @api_version.save
        format.html { redirect_to(@api_version, :notice => 'Api version was successfully created.') }
        format.xml  { render :xml => @api_version, :status => :created, :location => @api_version }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @api_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /api_versions/1
  # PUT /api_versions/1.xml
  def update
    @api_version = ApiVersion.find(params[:id])

    respond_to do |format|
      if @api_version.update_attributes(params[:api_version])
        format.html { redirect_to(@api_version, :notice => 'Api version was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @api_version.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /api_versions/1
  # DELETE /api_versions/1.xml
  def destroy
    @api_version = ApiVersion.find(params[:id])
    @api_version.destroy

    respond_to do |format|
      format.html { redirect_to(api_versions_url) }
      format.xml  { head :ok }
    end
  end
end
