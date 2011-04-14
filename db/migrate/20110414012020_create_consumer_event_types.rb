class CreateConsumerEventTypes < ActiveRecord::Migration
  def self.up
    create_table :consumer_event_types do |t|
      t.integer :consumer_id
      t.integer :event_type_id
      t.integer :interest_level

      t.timestamps
    end
  end

  def self.down
    drop_table :consumer_event_types
  end
end
