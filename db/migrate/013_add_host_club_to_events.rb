class AddHostClubToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :host_club, :string
  end

  def self.down
    remove_column :events, :host_club
  end
end
