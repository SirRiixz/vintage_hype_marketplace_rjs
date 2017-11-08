class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :charge
      t.integer :card_details

      t.timestamps
    end
  end
end
