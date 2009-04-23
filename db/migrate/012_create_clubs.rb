class CreateClubs < ActiveRecord::Migration
  def self.up
    create_table :clubs do |t|
      t.string :club_name
      t.string :state
      t.string :logo_file

      t.timestamps
    end
  end

  def self.down
    drop_table :clubs
  end
end
