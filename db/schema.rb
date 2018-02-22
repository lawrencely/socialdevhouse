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

ActiveRecord::Schema.define(version: 20180222085229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer "type"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "briefs", force: :cascade do |t|
    t.string "name"
    t.string "Company"
    t.string "email"
    t.text "about_your_company"
    t.text "target_audience"
    t.text "competitors"
    t.text "project_purpose"
    t.text "existing_site"
    t.text "colour_scheme"
    t.text "font_preference"
    t.text "complexity"
    t.text "look_and_feel"
    t.text "additional_ideas"
    t.text "design_examples_follow_1"
    t.text "design_examples_follow_2"
    t.text "design_examples_follow_3"
    t.text "design_examples_reject_1"
    t.text "design_examples_reject_2"
    t.text "design_examples_reject_3"
    t.text "additional_info"
    t.text "referral_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_requests", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
