json.extract! customer, :id, :name, :cpf, :fone, :email, :cep, :address, :number, :district, :city, :state, :created_at, :updated_at
json.url customer_url(customer, format: :json)
