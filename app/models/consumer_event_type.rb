class ConsumerEventType < ActiveRecord::Base
  belongs_to :consumer
  belongs_to :event_type
  
  #attr_accessible :interest_level
end
