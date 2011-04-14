class VoucherOffersController < ApplicationController
  # GET /voucher_offers
  # GET /voucher_offers.xml
  def index
    @voucher_offers = VoucherOffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @voucher_offers }
    end
  end

  # GET /voucher_offers/1
  # GET /voucher_offers/1.xml
  def show
    @voucher_offer = VoucherOffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @voucher_offer }
    end
  end

  # GET /voucher_offers/new
  # GET /voucher_offers/new.xml
  def new
    @voucher_offer = VoucherOffer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @voucher_offer }
    end
  end

  # GET /voucher_offers/1/edit
  def edit
    @voucher_offer = VoucherOffer.find(params[:id])
  end

  # POST /voucher_offers
  # POST /voucher_offers.xml
  def create
    @voucher_offer = VoucherOffer.new(params[:voucher_offer])

    respond_to do |format|
      if @voucher_offer.save
        format.html { redirect_to(@voucher_offer, :notice => 'Voucher offer was successfully created.') }
        format.xml  { render :xml => @voucher_offer, :status => :created, :location => @voucher_offer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @voucher_offer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /voucher_offers/1
  # PUT /voucher_offers/1.xml
  def update
    @voucher_offer = VoucherOffer.find(params[:id])

    respond_to do |format|
      if @voucher_offer.update_attributes(params[:voucher_offer])
        format.html { redirect_to(@voucher_offer, :notice => 'Voucher offer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @voucher_offer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /voucher_offers/1
  # DELETE /voucher_offers/1.xml
  def destroy
    @voucher_offer = VoucherOffer.find(params[:id])
    @voucher_offer.destroy

    respond_to do |format|
      format.html { redirect_to(voucher_offers_url) }
      format.xml  { head :ok }
    end
  end
end
