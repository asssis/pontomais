
ActiveRecord::Schema.define(version: 2021_02_13_183423) do
    create_table "employs", force: :cascade do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "cpf"
      t.integer "team_id", null: false
      t.integer "job_title_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["job_title_id"], name: "index_employs_on_job_title_id"
      t.index ["team_id"], name: "index_employs_on_team_id"
    end
  
    create_table "job_titles", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
    create_table "teams", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
    add_foreign_key "employs", "job_titles"
    add_foreign_key "employs", "teams"
  end