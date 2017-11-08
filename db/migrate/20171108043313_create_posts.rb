class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts, :id => false do |t|
    # create_table :posts do |t|
      t.integer :id
      t.binary :user_id
      t.text :picture
      t.binary :product_id
      t.text :description
      t.integer :price
      t.text :color

      t.timestamps
    end
  end
end
