class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.text :picture
      t.text :description
      t.integer :price
      t.text :color

      t.timestamps
      t.integer "profile_id"
      t.index ["profile_id"], name: "index_profiles_on_post_id"
    end
  end
end
