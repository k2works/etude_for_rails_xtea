class CreateOrderTables < ActiveRecord::Migration[5.1]
  def change
    create_table "BT010", primary_key: "CODE", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "NAME", limit: 30, null: false
      t.integer "CREDIT", default: 0, null: false
      t.integer "UPDCOUNTER", default: 0
    end

    create_table "BT020", primary_key: "NO", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "CODE", limit: 5, null: false
      t.date "DATE", null: false
      t.integer "UPDCOUNTER", default: 0
    end

    create_table "BT021", primary_key: ["ORDERS_NO", "ROW_NO"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "ORDERS_NO", limit: 20, null: false
      t.string "ROW_NO", limit: 20, null: false
      t.string "PRODUCTS_CODE", limit: 5, null: false
      t.integer "QUANTITY", default: 0, null: false
      t.date "SHIP_DATE", null: false
      t.integer "UPDCOUNTER", default: 0
    end

    create_table "BT030", primary_key: "CODE", id: :string, limit: 5, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string "NAME", limit: 30, null: false
      t.integer "PURCHASE_PRICE", default: 0, null: false
      t.integer "SALES_PRICE", default: 0, null: false
      t.string "UNIT", limit: 4, null: false
      t.integer "UPDCOUNTER", default: 0
    end
  end
end
