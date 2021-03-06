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

ActiveRecord::Schema.define(version: 20150204100322) do

  create_table "admins", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "articles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.text     "content"
    t.integer  "active"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "tags"
  end

  add_index "articles", ["category_id"], name: "index_articles_on_category_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.string   "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias"
    t.integer  "parent_id"
  end

  create_table "category_templates", force: true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "parent"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "field_websites", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_articles", force: true do |t|
    t.integer  "article_id"
    t.integer  "image_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_articles", ["article_id"], name: "index_image_articles_on_article_id"
  add_index "image_articles", ["image_id"], name: "index_image_articles_on_image_id"

  create_table "image_templates", force: true do |t|
    t.integer  "image_id"
    t.integer  "template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "image_templates", ["image_id"], name: "index_image_templates_on_image_id"
  add_index "image_templates", ["template_id"], name: "index_image_templates_on_template_id"

  create_table "images", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", force: true do |t|
    t.string   "name"
    t.string   "note"
    t.text     "content"
    t.string   "designer"
    t.string   "demo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.integer  "category_template_id"
  end

  create_table "tokens", force: true do |t|
    t.string   "email"
    t.string   "uid"
    t.string   "token"
    t.string   "expiration_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tokens", ["user_id"], name: "index_tokens_on_user_id"

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "image"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "email"
  end

  create_table "websites", force: true do |t|
    t.string   "storename"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "domain"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "field_website_id"
    t.integer  "template_id"
  end

  add_index "websites", ["field_website_id"], name: "index_websites_on_field_website_id"
  add_index "websites", ["template_id"], name: "index_websites_on_template_id"
  add_index "websites", ["user_id"], name: "index_websites_on_user_id"

end
