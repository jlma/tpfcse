class ClubsEvents < ActiveRecord::Migration
  def self.up
    create_table :clubs_events, :id => false do |t|
      t.integer :club_id
      t.integer :event_id
    end
  end

  def self.down
    drop_table :clubs_events
  end
end
