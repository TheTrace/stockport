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

ActiveRecord::Schema.define(version: 20160114100942) do

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
    t.text     "address"
    t.string   "logo"
    t.decimal  "current_price",      precision: 10, scale: 4, default: 0.0
    t.string   "price_at_str"
    t.datetime "price_updated_at"
    t.decimal  "high52wk",           precision: 10, scale: 4, default: 0.0
    t.decimal  "low52wk",            precision: 10, scale: 4, default: 0.0
    t.decimal  "open",               precision: 10, scale: 4, default: 0.0
    t.decimal  "range",              precision: 10, scale: 4, default: 0.0
    t.string   "mkt_capitalisation"
    t.decimal  "price_earnings",     precision: 10, scale: 4, default: 0.0
    t.decimal  "div_yield_pc",       precision: 10, scale: 4, default: 0.0
    t.decimal  "earnings_per_share", precision: 10, scale: 4, default: 0.0
    t.decimal  "beta",               precision: 10, scale: 4, default: 0.0
    t.string   "industry"
  end

  create_table "holdings", force: true do |t|
    t.integer  "company_id"
    t.decimal  "book_value",   precision: 10, scale: 4
    t.date     "opened_at"
    t.date     "closed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "description"
    t.decimal  "expense",      precision: 10, scale: 4
    t.decimal  "income",       precision: 10, scale: 4
    t.integer  "user_id"
    t.integer  "portfolio_id"
  end

  create_table "portfolios", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.decimal  "book_cost",   precision: 10, scale: 4
    t.decimal  "mkt_value",   precision: 10, scale: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.string   "trans_type"
    t.date     "trans_date"
    t.integer  "company_id"
    t.integer  "quantity"
    t.decimal  "price",          precision: 10, scale: 4
    t.decimal  "consideration",  precision: 10, scale: 4
    t.decimal  "commission",     precision: 10, scale: 4
    t.decimal  "stamp_duty",     precision: 10, scale: 4
    t.decimal  "PTM_levy",       precision: 10, scale: 4
    t.string   "bargin_ref"
    t.decimal  "buy_limit",      precision: 10, scale: 4
    t.string   "currency"
    t.decimal  "x_rate",         precision: 10, scale: 6
    t.date     "ex_div_date"
    t.date     "payment_date"
    t.date     "issue_date"
    t.decimal  "div_price",      precision: 10, scale: 4
    t.decimal  "div_net_total",  precision: 10, scale: 4
    t.text     "person"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "holding_id"
    t.decimal  "div_tax_rate",   precision: 10, scale: 4, default: 0.0
    t.decimal  "div_tax_credit", precision: 10, scale: 4, default: 0.0
    t.decimal  "div_gross",      precision: 10, scale: 4, default: 0.0
    t.decimal  "target_price",   precision: 10, scale: 4, default: 0.0
    t.decimal  "stop_price",     precision: 10, scale: 4, default: 0.0
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.integer  "level"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
