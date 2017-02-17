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

ActiveRecord::Schema.define(version: 20170217173101) do

  create_table "accessories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "advertisements", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_advertisements_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "father_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["father_id"], name: "index_categories_on_father_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "cnpj"
    t.string   "social_name"
    t.string   "address"
    t.string   "operating_hours"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "advertisement_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["advertisement_id"], name: "index_interests_on_advertisement_id"
    t.index ["user_id"], name: "index_interests_on_user_id"
  end

  create_table "kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsletters", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string   "name"
    t.integer  "advert"
    t.date     "expiration_date"
    t.integer  "visibility"
    t.float    "price"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_packages_on_user_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string   "brand"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "product_id"
    t.integer  "category_id"
    t.index ["category_id"], name: "index_parts_on_category_id"
    t.index ["product_id"], name: "index_parts_on_product_id"
  end

  create_table "phone_books", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "phone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
    t.index ["company_id"], name: "index_phone_books_on_company_id"
    t.index ["phone_id"], name: "index_phone_books_on_phone_id"
    t.index ["user_id"], name: "index_phone_books_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer  "type"
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "status"
    t.integer  "type"
    t.integer  "advertisement_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["advertisement_id"], name: "index_products_on_advertisement_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "service_kinds", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "kind_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kind_id"], name: "index_service_kinds_on_kind_id"
    t.index ["service_id"], name: "index_service_kinds_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.integer  "advertisement_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["advertisement_id"], name: "index_services_on_advertisement_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "cpf"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

  create_table "vehicle_accessories", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "accessory_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["accessory_id"], name: "index_vehicle_accessories_on_accessory_id"
    t.index ["vehicle_id"], name: "index_vehicle_accessories_on_vehicle_id"
  end

  create_table "vehicle_parts", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_vehicle_parts_on_part_id"
    t.index ["vehicle_id"], name: "index_vehicle_parts_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "year"
    t.string   "automaker"
    t.string   "model"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_vehicles_on_product_id"
  end

end
