class User < ActiveRecord::Base
  has_one :business
  has_one :consumer
  
  #attr_accessible :name, :email, :password
end
