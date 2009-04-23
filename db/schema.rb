# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 14) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_links", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "link_id"
  end

  create_table "clubs", :force => true do |t|
    t.string   "club_name"
    t.string   "state"
    t.string   "logo_file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clubs_events", :id => false, :force => true do |t|
    t.integer "club_id"
    t.integer "event_id"
  end

  create_table "events", :force => true do |t|
    t.string   "location"
    t.string   "name"
    t.string   "location_address"
    t.string   "location_city"
    t.string   "location_state"
    t.string   "location_zip"
    t.string   "reservation_phone"
    t.string   "camping_fee"
    t.string   "event_hosts"
    t.string   "location_gps"
    t.text     "notes"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "host_club"
  end

  create_table "links", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "company"
    t.string   "phone"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "parent_id"
    t.string   "navlabel"
    t.integer  "position"
    t.boolean  "redirect"
    t.string   "action_name"
    t.string   "controller_name"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
