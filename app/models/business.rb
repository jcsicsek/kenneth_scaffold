class Business < ActiveRecord::Base
  belongs_to :user
  has_many :vouchers
  
  #attr_accessible :name, :description, :zip_code, :address, :phone, :operating_hours
end
