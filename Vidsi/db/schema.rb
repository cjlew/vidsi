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

ActiveRecord::Schema.define(version: 20180111174429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credit_cards", force: :cascade do |t|
    t.integer "subscriber_id", null: false
    t.integer "credit_card_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscriber_id"], name: "index_credit_cards_on_subscriber_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "subscriber_id", null: false
    t.integer "price", null: false
    t.datetime "date", null: false
    t.string "status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscriber_id"], name: "index_invoices_on_subscriber_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "concurrent_viewer_limit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streams", force: :cascade do |t|
    t.integer "video_id", null: false
    t.integer "subscriber_id", null: false
    t.boolean "currently_streaming", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscriber_id"], name: "index_streams_on_subscriber_id"
    t.index ["video_id"], name: "index_streams_on_video_id"
  end

  create_table "subscribers", force: :cascade do |t|
    t.string "username", null: false
    t.string "subscription_type", null: false
    t.integer "streaming_limit", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.integer "provider_id", null: false
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_videos_on_provider_id"
  end

end
