json.extract! customer, :id, :CS_CODE, :CS_NAME, :CS_CREDIT, :created_at, :updated_at
json.url customer_url(customer, format: :json)
