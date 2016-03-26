class CreateReviewsUsers < ActiveRecord::Migration
  def change
    create_table :reviews_users, :id => false do |t|
      t.integer :reveiw_id
      t.integer :user_id
    end
  end
end
