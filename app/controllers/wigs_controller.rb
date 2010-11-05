class WigsController < ApplicationController
  # GET /wigs
  # GET /wigs.xml
  def index
    @wigs = Wig.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @wigs }
    end
  end

  # GET /wigs/1
  # GET /wigs/1.xml
  def show
    @wig = Wig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @wig }
    end
  end

  # GET /wigs/new
  # GET /wigs/new.xml
  def new
    @wig = Wig.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @wig }
    end
  end

  # GET /wigs/1/edit
  def edit
    @wig = Wig.find(params[:id])
  end

  # POST /wigs
  # POST /wigs.xml
  def create
    @wig = Wig.new(params[:wig])

    respond_to do |format|
      if @wig.save
        format.html { redirect_to(@wig, :notice => 'Wig was successfully created.') }
        format.xml  { render :xml => @wig, :status => :created, :location => @wig }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @wig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /wigs/1
  # PUT /wigs/1.xml
  def update
    @wig = Wig.find(params[:id])

    respond_to do |format|
      if @wig.update_attributes(params[:wig])
        format.html { redirect_to(@wig, :notice => 'Wig was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @wig.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /wigs/1
  # DELETE /wigs/1.xml
  def destroy
    @wig = Wig.find(params[:id])
    @wig.destroy

    respond_to do |format|
      format.html { redirect_to(wigs_url) }
      format.xml  { head :ok }
    end
  end
end
