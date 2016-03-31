LIVEWITHME
==========

## Technology used
Livewithme was built with Ruby v2.3.0, Rails v4.2.6, Twitter Bootstrap. It is deployed
to Heroku, and uses Cloudinary as the online image storage. Javascript and Jquery
are used for event listeners on the suburb filter and to toggle between user details
and listing details.

The following gems were used in addition to the standard Rails v4.2.6 gems:
  Development:
    annotate
    pry-rails

  Production:
    cloudinary
    bcrypt
    bootstrap-sass
    rails_12factor

## App purpose
Livewithme is designed to be a simple way for people to find flatmates for short
or long term living arrangements. Once a user has signed up they can add contact
details for themselves, and then view available property listings and contact the
landlords for that property. Users can also create property listings which will
be visible if they have updated the property to be available.

Users can edit and delete the listings they have created, and add and delete
images for their listings.

When a user or listing is deleted from the database a :dependent => destroy in
the models means that any ghost listings or images are deleted as well.

A user can be set with the :is_admin => true via the console. An admin has the
ability to: delete users via the admin menu which appears when an admin is logged
in; view all listings regardless of availability; can edit, update and delete both
listings and the associated images.

## Model set up

The database associations are set up as:

Review >--- USER ---< Listing ---< Image

## Features to add

### Reviews
The model for a review system has been included but not yet utilised. This would
done by adding a button or input field on the user#show page which will let you
add feedback about another user which would then be visible to anyone looking at
their profile.

### Geocoding
It would be good to be able to add geocoding on the listings so you could show
a iframe with Google Maps showing the location.

### Contact users/admins
A good feature would be to be able to send a message to another user or an admin
through the app rather than showing the user contact details. This would probably
cut down the number of stalkings and murders as a direct result of the use of this
app.
