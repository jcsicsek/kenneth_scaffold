class Voucher < ActiveRecord::Base
  belongs_to :business
  has_one :event_type
  has_many :voucher_offers
  
  #attr_accessible :title, :description, :event_time, :offer_lifespan_minutes, :max_offers, :voucher_price_cents, :full_value_cents, :active
end
