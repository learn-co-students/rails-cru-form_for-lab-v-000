ActiveRecord::Schema.define(version: 20180426155954) do

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.integer  "artist_id"
    t.integer  "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
