class Product < ApplicationRecord
  belongs_to :type_product
  has_many :product_orders, dependent: :destroy
end
