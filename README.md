# **HANGAR - A place to handle all your eatery bookings in one go!**

link to live site [here!](https://hangares.herokuapp.com/)

PROJECT IDEA - A platform where individuals can handle all bookings in one place! Whether be cafe, restaurants, or hanging out at the pub, the app will have an in-built calendar to keep track of all your made bookings. Apart from that there is also a enquiry & support feature where you can send any queries or requests to the admin support and they will respond to you in your enquiry section. To add more fun, there is also a couple of admin accounts which are made to enhance interactivity with "normal" user accounts, and also the ability to control various aspect of the site. 

![hangar_front_page](https://res.cloudinary.com/dpu8e4ucu/image/upload/v1662288366/Project%201%20Images/Screen_Shot_2022-09-04_at_8.38.01_pm_x9qbvj.png)

## **Project Background**

This is a project that emphasize on the back-end of web development, which involves understanding CRUD, databases, web servers and routing. As part of General Assembly's Software Engineering Immersive curriculum, we had two weeks of learning Ruby and Rails fundamentals. After that we have a week to build a live project using Ruby and Rails, which will be deployed on Heroku and it is able to be viewed publicly. After all the best way to put our knowledge gained to good use is to build a functional product!

**Tech Stack:** Ruby, Ruby on Rails, CSS, ERB, PostgreSQL

## **Project Model**

The project consists of 3 main models - User, Eateries and Booking, and supported by various minor models to enrich the whole CRUD ecosystem. 

(Image of model mapping to be inserted here)

## **Project Breakdown**

### **User Accounts**

Non-logged in users are able to view the site however it is only limited to just viewing the eateries. To be able to make bookings user must sign up for an account on site.

There are two types of accounts in Hangar:
1. Normal User
2. Admin User

Normal and admin user are distinguished by the `admin` column in the User model. 

Normal users can perform the below activities:
* Make / Edit Bookings
* View personal profile details + edit
* Send queries under the Enquiry & Support section

Admin users can perform additional activities that supposedly control the operations of the site:
* View all queries + sending response
* Ability to perform CRUD on eateries
* Ability to view all bookings made by all accounts. Also able to edit / delete according to requests
* Ability to view all accounts and make any necessary changes
* Ability to perform CRUD on gallery photos, which are displayed at the 'show' section of eatery.

Seed data for normal users are as below:
```
email: "morty@rick.co"
email: "cc@candie.co"
email: "rick@rick.co"

all passwords are 'chicken'
```

Seed data for admin users are as below:
```
email: "admin@test.co"
email: "admin2@test.co"

all passwords are 'chicken'
```
### **Eatery Model**

All eateries are further classified into `eatery_types` by having associations with `EateryType` model. 

There are 3 classification of eateries which are `restaurant`, `bar`, and `cafe`.

Users can have a choice of viewing all the eateries at one page (which is the `index` of the `Eatery` model), or view by eatery type by clicking on the respective eatery type tab at the start of the page.

User can view details of the eatery upon clicking, which will direct user to the `show` page of the eatery. Below of the eatery description is the booking form, which is for users to make any bookings with said eatery. This is one case where it differ from normal CRUD convention for better user experience. 

![booking_form](https://res.cloudinary.com/dpu8e4ucu/image/upload/v1662288366/Project%201%20Images/Screen_Shot_2022-09-04_at_8.37.46_pm_dnajy3.png)

### **Booking Model**

After user has made a booking, it will direct to the user's profile detail page (which is also the `show` page for `User` model).

The top part of the page consists of user's account detail, and below it is a calendar which will show all the bookings that the user has made. (Credits to `Simple Calendar` gem for this wonderful calendar render). 

The calendar will then acts as the `index` part of displaying all user's bookings.

For the admin user, the admin user will have additional access towards viewing all bookings made by all accounts. Normal user will not have access to it due to a validation method made in the `ApplicationController`.

![user_show_page](https://res.cloudinary.com/dpu8e4ucu/image/upload/v1662288365/Project%201%20Images/Screen_Shot_2022-09-04_at_8.37.03_pm_py417l.png)

## **Thoughts / Lessons**
* Developed a sense of appreciation towards the charming intricacy of back-end web development where I could not witness before.

* The ability to understand CRUD system and developed a project based on CRUD fundamentals, and even experimented with non-comforming CRUD conventions.

* Learnt associations between models and how do they relate to each other. I.e. if I were to add additional feature, how do they sit in the overall model? Which model do they associate to and is it a one to many or many to many association?

* Understanding routing as another main component of back-end web development. Learnt how / where to direct user after the user has performed an action on a page.

## **Future Wishlist**
* Mobile / Tablet compatibility (priority)
* Additional / stronger booking validation-
    * Datetime field validation for uniqueness
    * Each eatery will have a fixed max. number of seats each day, and each booking will deduct seats from the number.
    * Once number of seats reached 0 for that day, booking will not be allowed anymore.

* Exploring APIs such as- 
    * Google Maps to show restaurant location
    * Advanced search API 

* Review and comments feature
* Additional model i.e. States to further classify eateries by location






