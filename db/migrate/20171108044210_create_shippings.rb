class CreateShippings < ActiveRecord::Migration[5.1]
  def change
    create_table :shippings do |t|
      t.integer :id
      t.string :customer_address
      t.integer :order_id

      t.timestamps
    end
  end
end
