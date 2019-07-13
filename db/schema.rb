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

ActiveRecord::Schema.define(version: 20190120111753) do

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "content"
    t.bigint "post_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.text "messge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "handies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "item"
    t.integer "pccitem"
    t.date "receivedate"
    t.date "startdate"
    t.date "finishdate"
    t.string "solution"
    t.text "schedule"
    t.string "capacity"
    t.string "qual"
    t.float "read", limit: 24
    t.float "write", limit: 24
    t.string "owner"
    t.string "prodname"
    t.text "desc"
    t.string "prodpn"
    t.text "fwvversion"
    t.string "ftype"
    t.string "pcbvers"
    t.string "testres"
    t.string "expl"
    t.string "rpname"
    t.date "rpdate"
    t.text "approvename"
    t.text "explain"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "pc1os"
    t.text "pc1mb"
    t.text "pc1vendor"
    t.text "pc1chip"
    t.text "pc1bios"
    t.text "pc1basic"
    t.text "pc1comp32"
    t.text "pc1burnin"
    t.text "pc1fat"
    t.text "pc1fat32"
    t.text "pc1ntfs"
    t.text "pc1exfat"
    t.text "pc1result"
    t.text "pc1led"
    t.string "pc2os"
    t.string "pc2mb"
    t.string "pc2vendor"
    t.string "pc2chip"
    t.string "pc2bios"
    t.string "pc2basic"
    t.string "pc2comp32"
    t.string "pc2burnin"
    t.string "pc2fat"
    t.string "pc2fat32"
    t.string "pc2ntfs"
    t.string "pc2exfat"
    t.string "pc2result"
    t.string "pc2led"
    t.string "pc3os"
    t.string "pc3mb"
    t.string "pc3vendor"
    t.string "pc3chip"
    t.string "pc3bios"
    t.string "pc3basic"
    t.string "pc3comp32"
    t.string "pc3burnin"
    t.string "pc3fat"
    t.string "pc3fat32"
    t.string "pc3ntfs"
    t.string "pc3exfat"
    t.string "pc3result"
    t.string "pc3led"
    t.string "pc4os"
    t.string "pc4mb"
    t.string "pc4vendor"
    t.string "pc4chip"
    t.string "pc4bios"
    t.string "pc4basic"
    t.string "pc4ext34"
    t.string "pc4result"
    t.string "pc4led"
    t.string "pc5os"
    t.string "pc5mb"
    t.string "pc5vendor"
    t.string "pc5chip"
    t.string "pc5bios"
    t.string "pc5basic"
    t.string "pc5result"
    t.string "pc5led"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.bigint "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.bigint "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.bigint "image3_file_size"
    t.datetime "image3_updated_at"
    t.string "image4_file_name"
    t.string "image4_content_type"
    t.bigint "image4_file_size"
    t.datetime "image4_updated_at"
    t.float "cdmread", limit: 24
    t.float "cdmwrite", limit: 24
    t.float "rdr512", limit: 24
    t.float "rdw512", limit: 24
    t.float "rdr4k", limit: 24
    t.float "rdw4k", limit: 24
    t.float "rdrqd324k", limit: 24
    t.float "rdwqd324k", limit: 24
    t.float "pc2cdmread", limit: 24
    t.float "pc2cdmwrite", limit: 24
    t.float "pc2rdr512", limit: 24
    t.float "pc2rdw512", limit: 24
    t.float "pc2rdr4k", limit: 24
    t.float "pc2rdw4k", limit: 24
    t.float "pc2rdrqd324k", limit: 24
    t.float "pc2rdwqd324k", limit: 24
    t.float "pc3cdmread", limit: 24
    t.float "pc3cdmwrite", limit: 24
    t.float "pc3rdr512", limit: 24
    t.float "pc3rdw512", limit: 24
    t.float "pc3rdr4k", limit: 24
    t.float "pc3rdw4k", limit: 24
    t.float "pc3rdrqd324k", limit: 24
    t.float "pc3rdwqd324k", limit: 24
    t.integer "user_id"
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "blogimage_file_name"
    t.string "blogimage_content_type"
    t.bigint "blogimage_file_size"
    t.datetime "blogimage_updated_at"
    t.string "image"
    t.integer "user_id"
  end

  create_table "starts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "main_post"
    t.string "start"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userprofiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "phone"
    t.date "birthday"
    t.string "fb"
    t.string "ig"
    t.string "address"
    t.string "addrcode"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "account"
    t.string "name"
    t.integer "click_id"
    t.integer "phone"
    t.boolean "agree_terms"
    t.integer "id_number"
    t.integer "birth_day"
    t.integer "country_code"
    t.string "qq"
    t.string "webchat"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
end
