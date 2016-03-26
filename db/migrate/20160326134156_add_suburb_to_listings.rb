class AddSuburbToListings < ActiveRecord::Migration
  def change
    add_column :listings, :suburb, :text
  end
end
