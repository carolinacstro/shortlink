ActiveRecord::Schema[7.0].define(version: 2022_03_15_004638) do
  create_table "links", force: :cascade do |t|
    t.string "original_url"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
