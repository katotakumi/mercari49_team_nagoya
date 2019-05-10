class InitSchema < ActiveRecord::Migration[5.0]
  def up
    create_table "exhibitions", force: :cascade do |t|
      t.integer  "user_id"
      t.string   "title"
      t.text     "text",            limit: 65535
      t.string   "image"
      t.string   "category"
      t.string   "state"
      t.string   "shipping_charge"
      t.string   "shipping_area"
      t.string   "shipping_data"
      t.string   "price"
      t.datetime "created_at",                    null: false
      t.datetime "updated_at",                    null: false
      t.index ["user_id"], name: "index_exhibitions_on_user_id", using: :btree
    end
    create_table "users", force: :cascade do |t|
      t.string   "nickname",               default: "", null: false
      t.string   "email",                  default: "", null: false
      t.string   "encrypted_password",     default: "", null: false
      t.string   "family_name",            default: "", null: false
      t.string   "last_name",              default: "", null: false
      t.string   "j_family_name",          default: "", null: false
      t.string   "j_last_name",            default: "", null: false
      t.datetime "birthday",                            null: false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at",                          null: false
      t.datetime "updated_at",                          null: false
      t.integer  "prefecture"
      t.string   "municipalities"
      t.string   "address"
      t.string   "building"
      t.string   "phone_number"
      t.bigint   "card_number"
      t.date     "expiration_date"
      t.string   "security_number"
      t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    end
    add_foreign_key "exhibitions", "users"
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
  end
end
