class CreateTables < ActiveRecord::Migration[5.1]
  def change
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
  end
end
