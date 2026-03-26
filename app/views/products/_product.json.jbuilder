json.extract! product, :id, :name, :description, :amount, :type_products_id, :created_at, :updated_at
json.url product_url(product, format: :json)
