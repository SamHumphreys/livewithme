class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.text :first_name
      t.text :surname
      t.text :image
      t.text :phone
      t.text :social_media
      t.boolean :is_admin
      t.timestamps null: false
    end
  end
end
