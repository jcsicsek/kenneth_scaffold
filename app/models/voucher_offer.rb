class VoucherOffer < ActiveRecord::Base
  belongs_to :voucher
  belongs_to :consumer
  
  #attr_accessible :accepted, :active
end
