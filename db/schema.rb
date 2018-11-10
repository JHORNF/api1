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

ActiveRecord::Schema.define(version: 20181110145414) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "description"
    t.boolean  "state"
    t.boolean  "state_drop"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "description"
    t.boolean  "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "name"
    t.string   "description"
    t.integer  "time"
    t.integer  "points"
    t.boolean  "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_challenges_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "description"
    t.integer  "point"
    t.string   "image"
    t.boolean  "state"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_questions_on_category_id"
  end

  create_table "questions_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.index ["question_id"], name: "index_questions_users_on_question_id"
    t.index ["user_id"], name: "index_questions_users_on_user_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "points"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "solutions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.integer  "state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["challenge_id"], name: "index_solutions_on_challenge_id"
    t.index ["user_id"], name: "index_solutions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
