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

ActiveRecord::Schema.define(version: 20140706183347) do

  create_table "contacts", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.text     "mensaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.datetime "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stage_id"
    t.integer  "stadium_id"
  end

  create_table "groups", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "titulo"
    t.datetime "fecha"
    t.datetime "hora"
    t.text     "contenido"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "golesGanados"
    t.integer  "golesPerdidos"
    t.integer  "empate"
    t.integer  "desenlace"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadia", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stages", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statistics", force: true do |t|
    t.integer  "juegos"
    t.integer  "ganados"
    t.integer  "perdidos"
    t.integer  "empatados"
    t.integer  "goles"
    t.integer  "puntaje"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "teams", force: true do |t|
    t.string   "nombre"
    t.string   "bandera"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  create_table "teams_games", force: true do |t|
    t.integer "team_id"
    t.integer "game_id"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
