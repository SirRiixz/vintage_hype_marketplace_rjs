class CreateShippings < ActiveRecord::Migration[5.1]
  def change
    create_table :shippings do |t|
      t.string :customer_address
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
