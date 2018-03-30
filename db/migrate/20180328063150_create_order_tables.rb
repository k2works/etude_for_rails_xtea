class CreateOrderTables < ActiveRecord::Migration[5.1]
  def change
    create_table "BT010", primary_key: "CS_CODE", id: :string, limit: 20, comment: "顧客コード", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "CS_NAME", limit: 30, null: false, comment: "顧客名"
      t.integer "CS_CREDIT", default: 0, null: false, comment: "与信限度額"
      t.integer "UPDCOUNTER", default: 0
    end

    create_table "BT020", primary_key: "OD_NO", id: :string, limit: 20, comment: "受注No", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

    create_table "BT030", primary_key: "PD_CODE", id: :string, limit: 5, comment: "商品コード", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "PD_NAME", limit: 30, null: false, comment: "商品名"
      t.integer "PURCHASE_PRICE", default: 0, null: false, comment: "購入単価"
      t.integer "SALES_PRICE", default: 0, null: false, comment: "販売単価"
      t.string "PD_UNIT", limit: 4, null: false, comment: "扱い単位"
      t.integer "UPDCOUNTER", default: 0
    end
  end
end
