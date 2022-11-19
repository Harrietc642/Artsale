# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_19_072657) do
  create_table "artwork_genres", force: :cascade do |t|
    t.integer "artworks_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artworks_id"], name: "index_artwork_genres_on_artworks_id"
    t.index ["genre_id"], name: "index_artwork_genres_on_genre_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "title"
    t.decimal "price"
    t.string "brand"
    t.integer "inspiration_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "genre"
    t.string "inspiration_name"
    t.string "bitcoin_address"
    t.index ["inspiration_id"], name: "index_artworks_on_inspiration_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "email"
    t.string "login_pw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inspirations", force: :cascade do |t|
    t.string "name"
    t.string "year"
    t.string "nationality"
    t.string "wikipedia"
    t.integer "painting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.text "comments"
    t.integer "customer_id", null: false
    t.integer "artworks_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artworks_id"], name: "index_orders_on_artworks_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  add_foreign_key "artwork_genres", "artworks", column: "artworks_id"
  add_foreign_key "artwork_genres", "genres"
  add_foreign_key "artworks", "inspirations"
  add_foreign_key "orders", "artworks", column: "artworks_id"
  add_foreign_key "orders", "customers"
end
