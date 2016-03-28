User.destroy_all
u1 = User.create :email => 'admin@ga.co', :password => 'chicken', :first_name => 'Sam', :surname => 'Humphreys', :social_media => 'https://twitter.com/iamasamwich', :is_admin => true

Listing.destroy_all

Review.destroy_all

Image.destroy_all
