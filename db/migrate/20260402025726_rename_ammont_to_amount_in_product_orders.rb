class RenameAmmontToAmountInProductOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :product_orders, :ammont, :amount
  end
end
