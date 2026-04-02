class RenameTypeProductsIdToTypeProductIdInProducts < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :type_products_id, :type_product_id
  end
end