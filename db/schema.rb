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

ActiveRecord::Schema.define(version: 20180328063150) do

  create_table "AT010", primary_key: "CDBUMON", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "部門Ｃ" do |t|
    t.string "TXBUMON", limit: 30, null: false, comment: "部門名"
    t.string "NRKANRISYA", limit: 5, null: false, comment: "管理者№"
    t.string "TXTEKIYO", limit: 300, comment: "摘要"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "AT011", primary_key: ["CDBUMON", "DTHAKKOUNENGETSU"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "CDBUMON", limit: 5, null: false, comment: "部門Ｃ"
    t.string "DTHAKKOUNENGETSU", limit: 6, null: false, comment: "発効年月"
    t.string "CDJYOUIBUMON", limit: 5, null: false, comment: "上位部門Ｃ"
    t.string "DTSIKKOUNENGETSU", limit: 6, null: false, comment: "失効年月"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "AT020", primary_key: "NRJYUGYOIN", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "従業員№" do |t|
    t.string "TXKANA", limit: 30, null: false, comment: "カナ名"
    t.string "TXKANJI", limit: 30, null: false, comment: "漢字名"
    t.string "KBKOYOU", limit: 5, null: false, comment: "雇用区分"
    t.date "DTNYUSYA", null: false, comment: "入社日"
    t.date "DTTAISYA", comment: "退社日"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "AT021", primary_key: ["NRJYUGYOIN", "DTSYOZOKUNENGETSU"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "NRJYUGYOIN", limit: 5, null: false, comment: "従業員№"
    t.string "DTSYOZOKUNENGETSU", limit: 6, null: false, comment: "所属開始年月"
    t.string "CDBUMON", limit: 5, null: false, comment: "部門Ｃ"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "BT010", primary_key: "CS_CODE", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "顧客コード" do |t|
    t.string "CS_NAME", limit: 30, null: false, comment: "顧客名"
    t.integer "CS_CREDIT", default: 0, null: false, comment: "与信限度額"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "BT020", primary_key: "OD_NO", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "受注No" do |t|
    t.string "CS_CODE", limit: 5, null: false, comment: "顧客コード"
    t.date "OD_DATE", null: false, comment: "受注日"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "BT021", primary_key: ["OD_NO", "OD_LINE_NO"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "OD_NO", limit: 20, null: false, comment: "受注No"
    t.string "OD_LINE_NO", limit: 20, null: false, comment: "行番号"
    t.string "PD_CODE", limit: 5, null: false, comment: "商品コード"
    t.integer "OD_QUANTITY", default: 0, null: false, comment: "受注数"
    t.date "OD_SHIP_DATE", null: false, comment: "出荷日"
    t.integer "UPDCOUNTER", default: 0
  end

  create_table "BT030", primary_key: "PD_CODE", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "商品コード" do |t|
    t.string "PD_NAME", limit: 30, null: false, comment: "商品名"
    t.integer "PURCHASE_PRICE", default: 0, null: false, comment: "購入単価"
    t.integer "SALES_PRICE", default: 0, null: false, comment: "販売単価"
    t.string "PD_UNIT", limit: 4, null: false, comment: "扱い単位"
    t.integer "UPDCOUNTER", default: 0
  end

end
