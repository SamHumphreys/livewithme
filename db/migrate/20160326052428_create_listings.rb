class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.boolean :available
      t.text :address
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
