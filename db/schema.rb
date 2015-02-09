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

ActiveRecord::Schema.define(version: 20150206073044) do

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id",   limit: 4
    t.string   "trackable_type", limit: 255
    t.integer  "owner_id",       limit: 4
    t.string   "owner_type",     limit: 255
    t.string   "key",            limit: 255
    t.text     "parameters",     limit: 65535
    t.integer  "recipient_id",   limit: 4
    t.string   "recipient_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "appconfigs", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "key",         limit: 255
    t.string   "value",       limit: 255
    t.boolean  "visible",     limit: 1,     default: true
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "user_role_id",  limit: 4
    t.string   "name",          limit: 255
    t.string   "subject_class", limit: 255
    t.integer  "subject_id",    limit: 4
    t.string   "action",        limit: 255
    t.text     "description",   limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "permissions", ["user_role_id"], name: "index_permissions_on_user_role_id", using: :btree

  create_table "product_categories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.integer  "parent_id",   limit: 4
    t.integer  "weight",      limit: 4
    t.boolean  "visible",     limit: 1,     default: true
    t.integer  "creator_id",  limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "product_categories", ["creator_id"], name: "index_product_categories_on_creator_id", using: :btree
  add_index "product_categories", ["parent_id"], name: "index_product_categories_on_parent_id", using: :btree

  create_table "product_category_associations", force: :cascade do |t|
    t.integer  "product_id",          limit: 4
    t.integer  "product_category_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "product_category_associations", ["product_category_id"], name: "index_product_category_associations_on_product_category_id", using: :btree
  add_index "product_category_associations", ["product_id"], name: "index_product_category_associations_on_product_id", using: :btree

  create_table "product_unit_associations", force: :cascade do |t|
    t.integer  "product_id",      limit: 4
    t.integer  "product_unit_id", limit: 4
    t.boolean  "isDefault",       limit: 1, default: false
    t.integer  "ratio",           limit: 4, default: 0
    t.integer  "creator_id",      limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "product_unit_associations", ["creator_id"], name: "index_product_unit_associations_on_creator_id", using: :btree
  add_index "product_unit_associations", ["product_id"], name: "index_product_unit_associations_on_product_id", using: :btree
  add_index "product_unit_associations", ["product_unit_id"], name: "index_product_unit_associations_on_product_unit_id", using: :btree

  create_table "product_units", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.boolean  "visible",     limit: 1
    t.integer  "creator_id",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "product_units", ["creator_id"], name: "index_product_units_on_creator_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "code",            limit: 255
    t.string   "title",           limit: 255
    t.text     "description",     limit: 65535
    t.text     "content",         limit: 65535
    t.integer  "price",           limit: 4,     default: 0
    t.integer  "wholesale_price", limit: 4,     default: 0
    t.string   "thumb",           limit: 255
    t.integer  "default_unit_id", limit: 4
    t.boolean  "visible",         limit: 1,     default: true
    t.integer  "creator_id",      limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "products", ["creator_id"], name: "index_products_on_creator_id", using: :btree
  add_index "products", ["default_unit_id"], name: "index_products_on_default_unit_id", using: :btree

  create_table "supplier_orders", force: :cascade do |t|
    t.integer  "supplier_id",    limit: 4
    t.integer  "total_excl",     limit: 4,     default: 0
    t.integer  "total_incl",     limit: 4,     default: 0
    t.integer  "reduce_price",   limit: 4,     default: 0
    t.integer  "reduce_percent", limit: 4,     default: 0
    t.integer  "total_reduced",  limit: 4,     default: 0
    t.integer  "prepaid",        limit: 4,     default: 0
    t.datetime "created",                      default: '2015-02-06 07:35:01', null: false
    t.string   "status",         limit: 255
    t.text     "note",           limit: 65535
    t.integer  "creator_id",     limit: 4
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  add_index "supplier_orders", ["creator_id"], name: "index_supplier_orders_on_creator_id", using: :btree
  add_index "supplier_orders", ["supplier_id"], name: "index_supplier_orders_on_supplier_id", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "title",      limit: 255
    t.string   "address",    limit: 255
    t.string   "phone",      limit: 255
    t.string   "fax",        limit: 255
    t.string   "email",      limit: 255
    t.string   "taxcode",    limit: 255
    t.integer  "debit",      limit: 4,   default: 0
    t.boolean  "visible",    limit: 1,   default: true
    t.integer  "creator_id", limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "suppliers", ["creator_id"], name: "index_suppliers_on_creator_id", using: :btree

  create_table "user_roles", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.boolean  "visible",     limit: 1,     default: true
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_role_id",           limit: 4
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["user_role_id"], name: "index_users_on_user_role_id", using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",      limit: 255,   null: false
    t.integer  "item_id",        limit: 4,     null: false
    t.string   "event",          limit: 255,   null: false
    t.string   "whodunnit",      limit: 255
    t.text     "object",         limit: 65535
    t.datetime "created_at"
    t.text     "object_changes", limit: 65535
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

  create_table "warehouses", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "address",     limit: 255
    t.string   "phone",       limit: 255
    t.string   "fax",         limit: 255
    t.boolean  "visible",     limit: 1,     default: true
    t.integer  "creator_id",  limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "warehouses", ["creator_id"], name: "index_warehouses_on_creator_id", using: :btree

  add_foreign_key "permissions", "user_roles"
  add_foreign_key "product_categories", "product_categories", column: "parent_id"
  add_foreign_key "product_categories", "users", column: "creator_id"
  add_foreign_key "product_category_associations", "product_categories"
  add_foreign_key "product_category_associations", "products"
  add_foreign_key "product_unit_associations", "product_units"
  add_foreign_key "product_unit_associations", "products"
  add_foreign_key "product_unit_associations", "users", column: "creator_id"
  add_foreign_key "product_units", "users", column: "creator_id"
  add_foreign_key "products", "product_units", column: "default_unit_id"
  add_foreign_key "products", "users", column: "creator_id"
  add_foreign_key "supplier_orders", "suppliers"
  add_foreign_key "supplier_orders", "users", column: "creator_id"
  add_foreign_key "suppliers", "users", column: "creator_id"
  add_foreign_key "users", "user_roles"
  add_foreign_key "warehouses", "users", column: "creator_id"
end
