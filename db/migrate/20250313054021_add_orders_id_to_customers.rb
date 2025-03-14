class AddOrdersIdToCustomers < ActiveRecord::Migration[7.2]
  def change
    add_column :customers, :orders_id, :integer
  end
end
