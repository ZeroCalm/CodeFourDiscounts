********README STILL IN PROGRESS*********


<h2>Purpose:</h2>
  This app was created with the hungry EMT and Paramedic in mind.  I figured, ya gotta eat sometime (and chances are you're not rich).  But you can always count on a good portion of the public to have our backs!  



<h2>Basic Idea </h2>
  Users are able to log in with email and password.  They are able to add locations to the database with an actual street address or general area and that location will be saved to the shared google map.  Also the information located in the infowindow for each location contains the custom/user-generated data from the time of creation.

  View Live example:  https://guarded-escarpment-80300.herokuapp.com/


  General Information:

  ---  The Admin Login button is located in the top-left corner of the layout/application view.  It will only show user is logged in as Admin. (Conditional set to show link only if current_user.email == admin@admin.com), This will be changed to check for admin: true, in the future.  Also the admin field will be deleted on new users at creation time, to avoid users manually changing this field.


Instructions:

1.  git clone https://github.com/ZeroCalm/CodeFourDiscounts.git.

2.  bundle install

3.  rails db:migrate

4.  If you want to use the admin feature, you will need to run
   rails g rails_admin:install

   --Once logged in as "admin"  a button leading to the Admin panel will show.

*****************************************
   SAMPLE LOGIN: (once seed file has run)

   Admin Login:  admin@admin.com
   Password:     "password"
--------------
   Non-Admin:

   Login:       a@b.com
   Password:    "password"

****************************************************************

Gems Used:

Devise <br>
Geocoder <br>
Rails_admin  '~> 1.1.1' <br>
Omniauth-facebook'<br>



*************************

Future Plans:

1.  On creation of "New Location",
      - redirect_to "Map" page
      - "New Location" as center of maps
      - Marker window open showing new data

2.  Add Messaging Board for and links to:
      - EMS related equipment reviews
      - EMS related news articles
      - Advice articles
      - Job Postings
      etc.

3. Add Star Ratings for locations (Maybe??)

4. User will have the ability sort "Locations Index", by food type.

5.  Driving Directions are given from current location when requested by user on "Map Page"
