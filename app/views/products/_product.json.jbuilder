json.extract! product, :id, :PD_CODE, :PD_NAME, :PURCHASE_PRICE, :SALES_PRICE, :PD_UNIT, :created_at, :updated_at
json.url product_url(product, format: :json)
