class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table "AT010", primary_key: "CDBUMON", id: :string, limit: 5, comment: "部門Ｃ", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

    create_table "AT020", primary_key: "NRJYUGYOIN", id: :string, limit: 5, comment: "従業員№", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
  end
end
