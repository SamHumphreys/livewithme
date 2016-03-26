User.destroy_all
u1 = User.create :email => 'sam@ga.co', :password => 'chicken', :first_name => 'Sam', :surname => 'Humphreys', :social_media => 'https://twitter.com/iamasamwich', :is_admin => true
u2 = User.create :email => 'amy@ga.co', :password => 'chicken', :first_name => 'Amy', :is_admin => false

Listing.destroy_all
l1 = Listing.create :available => true, :address => '96/18 Cecilia Street, Marrickville'
l2 = Listing.create :available => false, :address => '10/9 View Street, Marrickville'

Review.destroy_all
r1 = Review.create :review => 'Goooowooood'

u1.reviews << r1
u1.listings << l1
u2.listings << l2
