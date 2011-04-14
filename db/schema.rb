# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110414012020) do

  create_table "businesses", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.string   "zip_code"
    t.string   "address"
    t.string   "phone"
    t.string   "operating_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumer_event_types", :force => true do |t|
    t.integer  "consumer_id"
    t.integer  "event_type_id"
    t.integer  "interest_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consumers", :force => true do |t|
    t.string   "zip_code"
    t.integer  "user_id"
    t.integer  "loyalty_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_types", :force => true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voucher_offers", :force => true do |t|
    t.integer  "voucher_id"
    t.integer  "business_id"
    t.integer  "consumer_id"
    t.boolean  "accepted"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vouchers", :force => true do |t|
    t.integer  "business_id"
    t.integer  "event_type_id"
    t.string   "title"
    t.string   "description"
    t.datetime "event_time"
    t.integer  "offer_lifespan_minutes"
    t.integer  "max_offers"
    t.integer  "voucher_price_cents"
    t.integer  "full_value_cents"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
