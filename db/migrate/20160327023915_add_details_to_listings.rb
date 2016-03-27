class AddDetailsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :details, :text
  end
end
