json.extract! product_order, :id, :order_id, :product_id, :price, :ammont, :created_at, :updated_at
json.url product_order_url(product_order, format: :json)
