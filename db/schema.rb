# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140319085645) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "ticker"
    t.text     "description"
    t.text     "reference"
    t.string   "currency"
    t.string   "country"
    t.string   "bourse"
    t.string   "sector"
    t.integer  "year_inc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mkt_sector"
    t.string   "mkt_segment"
    t.string   "www_address"
    t.string   "isin"
    t.string   "share_type"
  end

  create_table "transactions", force: true do |t|
    t.string   "trans_type"
    t.date     "trans_date"
    t.integer  "company_id"
    t.integer  "quantity"
    t.decimal  "price",         precision: 10, scale: 4
    t.decimal  "consideration", precision: 10, scale: 4
    t.decimal  "commission",    precision: 10, scale: 4
    t.decimal  "stamp_duty",    precision: 10, scale: 4
    t.decimal  "PTM_levy",      precision: 10, scale: 4
    t.decimal  "payable",       precision: 10, scale: 4
    t.decimal  "cost_percent",  precision: 10, scale: 6
    t.string   "bargin_ref"
    t.decimal  "avg_cost",      precision: 10, scale: 4
    t.decimal  "buy_limit",     precision: 10, scale: 4
    t.string   "currency"
    t.decimal  "x_rate",        precision: 10, scale: 6
    t.date     "ex_div_date"
    t.date     "payment_date"
    t.date     "issue_date"
    t.decimal  "div_price",     precision: 10, scale: 4
    t.decimal  "div_net_total", precision: 10, scale: 4
    t.text     "person"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
