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

ActiveRecord::Schema.define(version: 20180328015548) do

  create_table "AT010", primary_key: "CDBUMON", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "TXBUMON", limit: 30, null: false
    t.string "NRKANRISYA", limit: 5, null: false
    t.string "TXTEKIYO", limit: 300
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "AT011", primary_key: ["CDBUMON", "DTHAKKOUNENGETSU"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "CDBUMON", limit: 5, null: false
    t.string "DTHAKKOUNENGETSU", limit: 6, null: false
    t.string "CDJYOUIBUMON", limit: 5, null: false
    t.string "DTSIKKOUNENGETSU", limit: 6, null: false
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "AT020", primary_key: "NRJYUGYOIN", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "TXKANA", limit: 30, null: false
    t.string "TXKANJI", limit: 30, null: false
    t.string "KBKOYOU", limit: 5, null: false
    t.date "DTNYUSYA", null: false
    t.date "DTTAISYA"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "AT021", primary_key: ["NRJYUGYOIN", "DTSYOZOKUNENGETSU"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "NRJYUGYOIN", limit: 5, null: false
    t.string "DTSYOZOKUNENGETSU", limit: 6, null: false
    t.string "CDBUMON", limit: 5, null: false
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT010", primary_key: "IDVARIANT", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "TXNAME", limit: 10, null: false
    t.string "TXTYPE", limit: 10, null: false
    t.string "TXVALUE", limit: 100, null: false
    t.string "TXREMARKS", limit: 500
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT020", primary_key: "IDUSER", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "TXNAME", limit: 30, null: false
    t.string "TXPASSWORD", limit: 50, null: false
    t.date "DTVALID", null: false
    t.date "DTEXPIRE", null: false
    t.string "TXEMAIL", limit: 40
    t.string "TXMENUS", limit: 30, null: false
    t.string "NREMPLOYEE", limit: 5
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT021", primary_key: ["IDUSER", "IDFUNCTION", "IDFILTER"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "IDUSER", limit: 5, null: false
    t.string "IDFUNCTION", limit: 20, null: false
    t.string "IDFILTER", limit: 40, null: false
    t.string "TXVALUE", limit: 50
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT030", primary_key: "IDNUMBER", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "TXPREFIX", limit: 4
    t.integer "NRNUMDIGIT", limit: 2, default: 0, null: false
    t.integer "NRCURRENT", default: 0, null: false
    t.string "FGWITHCD", limit: 1, null: false
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT040", primary_key: ["IDUSERKUBUN", "KBUSERKUBUN"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "IDUSERKUBUN", limit: 20, null: false
    t.string "KBUSERKUBUN", limit: 5, null: false
    t.string "TXUSERKUBUN", limit: 20, null: false
    t.string "SQLIST", limit: 5
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT050", primary_key: "NRSESSION", id: :string, limit: 7, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.datetime "DTLOGIN", null: false
    t.datetime "DTLOGOUT"
    t.string "IDUSER", limit: 5, null: false
    t.string "TXIPADDRESS", limit: 20, null: false
    t.string "VLVERSION", limit: 10, null: false
    t.string "KBSESSIONSTATUS", limit: 3, null: false
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT051", primary_key: ["NRSESSION", "SQPROGRAM"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "NRSESSION", limit: 7, null: false
    t.integer "SQPROGRAM", limit: 2, default: 0, null: false
    t.string "IDMENU", limit: 2, null: false
    t.string "IDPROGRAM", limit: 10, null: false
    t.string "TXPROGRAM", limit: 30, null: false
    t.datetime "DTSTART", null: false
    t.datetime "DTEND"
    t.string "KBPROGRAMSTATUS", limit: 2
    t.text "TXERRORLOG", limit: 4294967295
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT060", primary_key: ["DTSTART", "KBKAZEI"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.date "DTSTART", null: false
    t.string "KBKAZEI", limit: 1, null: false
    t.decimal "VLTAXRATE", precision: 3, scale: 2, default: "0.0", null: false
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT070", primary_key: ["KBCALENDAR", "DTOFF"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "KBCALENDAR", limit: 2, null: false
    t.date "DTOFF", null: false
    t.string "TXOFF", limit: 20
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT080", primary_key: ["KBCURRENCY", "DTNEND"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "KBCURRENCY", limit: 5, null: false
    t.integer "DTNEND", limit: 2, default: 0, null: false
    t.decimal "VLRATEB", precision: 10, scale: 3, default: "0.0", null: false
    t.decimal "VLRATEM", precision: 10, scale: 3, default: "0.0", null: false
    t.decimal "VLRATES", precision: 10, scale: 3, default: "0.0", null: false
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "ZT081", primary_key: ["KBCURRENCY", "DTNEND", "DTMSEQ"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=sjis" do |t|
    t.string "KBCURRENCY", limit: 5, null: false
    t.integer "DTNEND", limit: 2, default: 0, null: false
    t.integer "DTMSEQ", limit: 2, default: 0, null: false
    t.decimal "VLRATEB", precision: 10, scale: 3, default: "0.0", null: false
    t.decimal "VLRATEM", precision: 10, scale: 3, default: "0.0", null: false
    t.decimal "VLRATES", precision: 10, scale: 3, default: "0.0", null: false
    t.integer "UPDCOUNTER", default: 0
  end

end
