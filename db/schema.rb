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

ActiveRecord::Schema.define(version: 20150918211317) do

  create_table "articles_workflows", force: :cascade do |t|
    t.integer  "ArticleID",   null: false
    t.integer  "Workflow_ID", null: false
    t.integer  "Implementor", null: false
    t.datetime "Impl_On",     null: false
  end

  create_table "evidence_items", primary_key: "ev_type_ID", force: :cascade do |t|
    t.string "ev_type_name"
  end

  create_table "evidence_sources", primary_key: "ArticleID", force: :cascade do |t|
    t.string   "Title",        limit: 200, null: false
    t.string   "Author",       limit: 200, null: false
    t.datetime "Year"
    t.string   "Source",       limit: 200
    t.datetime "DOI"
    t.integer  "Issue_no"
    t.string   "Volume",       limit: 200
    t.string   "Page_no",      limit: 200
    t.integer  "Submitter",                null: false
    t.datetime "Submitted_on",             null: false
  end

  create_table "roles", primary_key: "roleID", force: :cascade do |t|
    t.string "rolename"
    t.string "edit_user",      limit: 1, default: "n"
    t.string "modify_masters", limit: 1, default: "n"
    t.string "allow_mod",      limit: 1, default: "n"
    t.string "allow_analysis", limit: 1, default: "n"
    t.string "allow_scrh",     limit: 1, default: "n"
  end

  create_table "rsch_methods", primary_key: "methodID", force: :cascade do |t|
    t.string "methodname", limit: 200
  end

  create_table "rsch_participants", primary_key: "partID", force: :cascade do |t|
    t.string "partname"
  end

  create_table "se_methgies", primary_key: "se_methgyID", force: :cascade do |t|
    t.string "se_methgyname"
    t.string "se_methgydesc"
  end

  create_table "se_methods", primary_key: "se_methodID", force: :cascade do |t|
    t.string "se_methodname"
  end

  create_table "users", primary_key: "UserID", force: :cascade do |t|
    t.string  "Username",    limit: 25,  null: false
    t.string  "Password",    limit: 15,  null: false
    t.string  "fullname",    limit: 150, null: false
    t.string  "email",       limit: 150
    t.string  "Affiliation", limit: 200
    t.integer "roleID"
    t.string  "gender",      limit: 1
    t.integer "age"
  end

  create_table "workflows", primary_key: "workflowID", force: :cascade do |t|
    t.string "workflowname"
  end

end
