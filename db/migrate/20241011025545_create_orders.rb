class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.decimal :total_price
      t.integer :customer_id  # Ensure this is correct
      t.timestamps
    end
  end
end
