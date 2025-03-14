class AddCustomerIdToOrders < ActiveRecord::Migration[6.1]
  def change
    unless column_exists?(:orders, :customer_id)
      add_column :orders, :customer_id, :integer
    end
  end
end
