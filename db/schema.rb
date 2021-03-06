# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_05_200850) do

  create_table "ability_scores", force: :cascade do |t|
    t.string "name"
    t.integer "modifier"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.integer "cr_rating"
    t.integer "exp"
    t.string "species"
    t.string "npc_class"
    t.integer "hp"
    t.integer "rp"
    t.integer "eac"
    t.integer "kac"
    t.integer "fort_save"
    t.integer "ref_save"
    t.integer "will_save"
    t.integer "initiative"
    t.integer "speed"
    t.string "master_skill"
    t.string "good_skill"
    t.string "offense_ability"
    t.string "defense_ability"
    t.string "immunities"
    t.string "melee"
    t.string "ranged"
    t.string "special_ability"
    t.string "medical"
    t.string "magic_items"
    t.string "tech_items"
    t.string "armor"
    t.string "other_equip"
    t.string "loot"
    t.string "optional_info"
    t.integer "user_id"
    t.integer "str_mod"
    t.integer "dex_mod"
    t.integer "con_mod"
    t.integer "int_mod"
    t.integer "wis_mod"
    t.integer "char_mod"
    t.index ["user_id"], name: "index_npcs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
