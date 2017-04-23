********README STILL IN PROGRESS*********


Purpose:
  This app was created with the hungry EMT and Paramedic in mind.  I figured, ya gotta eat sometime (and chances are you're not rich).  But you can always count on a good portion of the public to have our backs!  

    <center>    DISCOUNTS!!!!!!    </center>

  Yes, This app will show you locations on a Google Map, that will not only provide location information, but location information that has been provided by your very own peers.


  General Information:

  ---  The Admin Login button is located in the top-left corner of the layout/application view.  It will only show user is logged in as Admin. (Conditional set to show link only if current_user.email == admin@admin.com), This will be changed to check for admin: true, in the future.  Also the admin field will be deleted on new users at creation time, to avoid users manually changing this field.


Instructions:

1.  git clone https://github.com/ZeroCalm/CodeFourDiscounts.git.

2.  bundle install

3.  rails db:migrate

4.  If you want to use the admin feature, you will need to run
   rails g rails_admin:install


   SAMPLE LOGIN:

   Admin Login:  admin@admin.com
   Password:     "password"

   Non-Admin:

   Login:       a@b.com
   Password:    "password"

****************************************************************

Gems Used:

Devise
Geocoder
Rails_admin  '~> 1.1.1'



*************************
TODO:

Delete admin attribute on creation.

Current Locations shows up on map

Directions are given from current location when requested by user on Map Page

Separate address fields in Location Model, so that the Locations Index page can be sorted by city and/or other criteria.
