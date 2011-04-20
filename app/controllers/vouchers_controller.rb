class VouchersController < ApplicationController
  # GET /vouchers
  # GET /vouchers.xml
  def index
    @vouchers = Voucher.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vouchers }
    end
  end

  # GET /vouchers/1
  # GET /vouchers/1.xml
  def show
    @voucher = Voucher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @voucher }
    end
  end

  # GET /vouchers/new
  # GET /vouchers/new.xml
  def new
    @voucher = Voucher.new


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @voucher }
    end
  end

  # GET /vouchers/1/edit
  def edit
    @voucher = Voucher.find(params[:id])
  end

  # POST /vouchers
  # POST /vouchers.xml
  def create
    #begin
    @voucher = Voucher.new(params[:voucher])
    @voucher.business_id = session[:business_id]
    @voucher.active = true
    @consumers = Consumer.all
    @consumer_event_types = ConsumerEventType.all
    @business = Business.find(session[:business_id])

    respond_to do |format|
      if @voucher.save
	@consumers.each do |consumer|
	  if consumer.zip_code == @voucher.business.zip_code && consumer.consumer_event_types.find(@voucher.event_type_id).interest_level > 0
	    @subject = "You have received an offer for $" + (@voucher.voucher_price_cents / 100).to_s + " " + EventType.find(@voucher.event_type_id).label + " from " + @voucher.business.name + "!"
	    @message = "Test"
	    Emailer.deliver_contact(consumer.user.email, @subject, @message)
	    @voucher_offer = VoucherOffer.new
	    @voucher_offer.consumer = consumer
	    @voucher_offer.voucher = @voucher
	    @voucher_offer.active = true
	    @voucher_offer.accepted = false
	    @voucher_offer.save
	  end
	end
        format.html { redirect_to(@business, :notice => 'Voucher was successfully created.') }
        format.xml  { render :xml => @voucher, :status => :created, :location => @voucher }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @voucher.errors, :status => :unprocessable_entity }
      end
    end
    #rescue Exception
    #end
  end

  # PUT /vouchers/1
  # PUT /vouchers/1.xml
  def update
    @voucher = Voucher.find(params[:id])

    respond_to do |format|
      if @voucher.update_attributes(params[:voucher])
        format.html { redirect_to(@voucher, :notice => 'Voucher was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @voucher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vouchers/1
  # DELETE /vouchers/1.xml
  def destroy
    @voucher = Voucher.find(params[:id])
    @voucher.destroy

    respond_to do |format|
      format.html { redirect_to(vouchers_url) }
      format.xml  { head :ok }
    end
  end
end
