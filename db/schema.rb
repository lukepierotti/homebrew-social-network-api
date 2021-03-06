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

ActiveRecord::Schema.define(version: 20171010183058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "website"
    t.string "image"
    t.text "description"
    t.integer "distance"
    t.float "lat"
    t.float "lng"
  end

  create_table "chatroom_users", force: :cascade do |t|
    t.integer "chatroom_id"
    t.integer "user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start"
    t.datetime "end"
    t.string "number"
    t.string "street"
    t.string "state"
    t.string "city"
    t.float "lat"
    t.float "lng"
    t.integer "group_id"
  end

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followee_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "user_id"
    t.integer "chatroom_id"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.float "amount"
    t.string "unit"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "instructions"
    t.float "og"
    t.float "fg"
    t.float "abv"
    t.string "image"
    t.string "type_of_brew"
    t.string "style"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "text"
    t.integer "rating"
    t.integer "recipe_id"
    t.integer "user_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
  end

  create_table "user_recipes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recipe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.text "image"
  end

end
