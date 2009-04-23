class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :location
      t.string :name
      t.string :location_address
      t.string :location_city
      t.string :location_state
      t.string :location_zip
      t.string :reservation_phone
      t.string :camping_fee
      t.string :event_hosts
      t.string :location_gps
      t.text :notes
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
