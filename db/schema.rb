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

ActiveRecord::Schema.define(version: 20171012052739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.boolean "no_smoking_confirm"
    t.boolean "form_confirm"
    t.boolean "tent_confirm"
    t.string "returning_past_years"
    t.string "returning_improvement_ideas"
    t.string "new_why"
    t.string "new_attitude"
    t.string "new_inspiration"
    t.string "new_other_skills"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.date "start_date"
    t.date "end_date"
    t.string "location"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "field_responses", force: :cascade do |t|
    t.string "data"
    t.string "type"
    t.integer "form_response_id"
    t.integer "user_id"
    t.integer "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "label"
    t.string "name"
    t.string "type"
    t.string "options"
    t.integer "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_responses", force: :cascade do |t|
    t.integer "form_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.string "title"
    t.datetime "due_date"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "healths", force: :cascade do |t|
    t.string "dietary_preferences"
    t.string "dietary_restrictions"
    t.string "allergies"
    t.string "fitness_level"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "medical_history"
    t.text "injuries"
    t.date "tetanus_booster"
    t.text "insurance_provider"
    t.text "plan_number"
    t.text "responsible_party"
  end

  create_table "legals", force: :cascade do |t|
    t.string "waiver_signature"
    t.boolean "behavior_agreement"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.integer "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travels", force: :cascade do |t|
    t.datetime "arrival_time"
    t.string "arrival_company"
    t.string "arrival_number"
    t.string "arrival_from"
    t.datetime "departure_time"
    t.string "departure_company"
    t.string "departure_number"
    t.string "departure_from"
    t.string "travelling_with"
    t.string "other_info"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.boolean "returning", default: false
    t.string "address_1"
    t.string "address_2"
    t.string "address_city"
    t.string "address_country"
    t.string "address_zip"
    t.string "gender"
    t.string "parents"
    t.date "birthdate"
    t.string "voice_part"
    t.string "lowest_note"
    t.string "highest_note"
    t.string "ear_learning"
    t.string "read_music"
    t.string "independent_voice"
    t.string "independent_learning"
    t.string "play_to_you"
    t.string "like_to_move"
    t.string "other_experience"
    t.string "author_experience"
    t.string "instrument_experience"
    t.string "address_state"
    t.string "phone"
    t.string "ice_1_name"
    t.string "ice_1_phone"
    t.string "ice_2_name"
    t.string "ice_2_phone"
    t.boolean "accepted"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
