class ConsumerEventTypesController < ApplicationController
  # GET /consumer_event_types
  # GET /consumer_event_types.xml
  def index
    @consumer_event_types = ConsumerEventType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @consumer_event_types }
    end
  end

  # GET /consumer_event_types/1
  # GET /consumer_event_types/1.xml
  def show
    @consumer_event_type = ConsumerEventType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consumer_event_type }
    end
  end

  # GET /consumer_event_types/new
  # GET /consumer_event_types/new.xml
  def new
    @consumer_event_type = ConsumerEventType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consumer_event_type }
    end
  end

  # GET /consumer_event_types/1/edit
  def edit
    @consumer_event_type = ConsumerEventType.find(params[:id])
  end

  # POST /consumer_event_types
  # POST /consumer_event_types.xml
  def create
    @consumer_event_type = ConsumerEventType.new(params[:consumer_event_type])

    respond_to do |format|
      if @consumer_event_type.save
        format.html { redirect_to(@consumer_event_type, :notice => 'Consumer event type was successfully created.') }
        format.xml  { render :xml => @consumer_event_type, :status => :created, :location => @consumer_event_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consumer_event_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consumer_event_types/1
  # PUT /consumer_event_types/1.xml
  def update
    @consumer_event_type = ConsumerEventType.find(params[:id])

    respond_to do |format|
      if @consumer_event_type.update_attributes(params[:consumer_event_type])
        format.html { redirect_to(@consumer_event_type, :notice => 'Consumer event type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consumer_event_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consumer_event_types/1
  # DELETE /consumer_event_types/1.xml
  def destroy
    @consumer_event_type = ConsumerEventType.find(params[:id])
    @consumer_event_type.destroy

    respond_to do |format|
      format.html { redirect_to(consumer_event_types_url) }
      format.xml  { head :ok }
    end
  end
end
