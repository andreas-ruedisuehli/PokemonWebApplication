# Pokemon-Collector

This web application aims to allow collectors to track their Pokemon collections, allowing for a simple overview of their holdings.

**Contents:**
* [Analysis](#analysis)
  * [Scenario](#scenario)
  * [User Stories](#user-story-documentation)
  * [Use Cases](#use-cases)
* Design
  * Prototype Design
  * Domain Design
  * [Business Logic Design](#business-logic-design)
  * [Endpoint Design](#endpoint-design)
* [Implementation](#implementation) 
  * [Backend Technology](#backend-technology)
  * [Frontend Technology](#frontend-technology)
* [Deployment](#deployment)
* [User Guide](#user-guide)
* [Project Management](#project-management)
  * [Members](#members)
  * [Maintainer](#maintainer)
  * [Licenses](#licenses)
  
## Analysis ##
 ### Scenario ###
New Pokémon sets are constantly releasing brining with them an influx of new cards to collect, with thousands of varying cards available. Collectors are amassing large piles of cards and desire a way to keep track of their ever growing collections. This web application allows users to easily track their collections as well as browse through an seamingly endless amount of cards that are yet to be in their possession.

## User Story Documentation ##
### User Stories ###
1. As a collector, I want to create an account so that I can get access to the Web app.
2. As a collector, I want to log-in so that I can authenticate myself.
3. As a collector, I want to edit my profile so that my data is stored securely.
4. As a collector, I want to use list views so that I can explore and read the available collections.
5. As a collector, I want to use edit and create views so that I can manage my collection.
6. As a collector, I want to have a Web app so that I can use it on different mobile devices and on desktop computers.
7. As a collector, I want to see a consistent visual appearance so that I can navigate easily, and it looks consistent.
### User Story 1 ###
Users are directed to this page once they hit the green "Sign Up" button located in the top right hand corner of the web page. Users are then able to create an account that they can use to track their collections. An account can be created by inputting the relevant data into the fields, agreeing to the license terms and then pressing sign up, the account will then be created, assuming that the email address is not already in use and that the passwords match. Passwords are not subject to any guidelines, but are hashed for extra security. Once the user has created their account they will automatically be redirected to the login page.

The hyperlink at the bottom of the form can be clicked and will redirect the user to the login page, where they can input their existing credentials.

![image](https://user-images.githubusercontent.com/92316932/150631235-eba9c68d-f25d-4756-93c3-24b70c08117a.png)


### User Story 2 ###
Users can reach the log in page either by utilising the aforementioned hyperlink contained within the sign up form or by pressing the "Log In" button located in the top right hand corner. Users can log in on this page, provided that they have created an account. The credentials needed for this form are the email address and the password. Once the user logs themself in they will be redirected to the collections page and the "Log in" and "Sign up" buttons will no longer be available, instead "My Profile" and "Logout" will be displayed.

If the credentials then an error message will be displayed in red below the form.

![image](https://user-images.githubusercontent.com/92316932/150631667-e83c1dae-6a54-4c3b-887f-9f226233e9fb.png)

### User Story 3 ###
By clicking on the "My Profile" button in the top right hand corner (visible only to those that are logged in) the update profile form can be reached. This form allows users to change their email, and password. Once update is clicked, the credentials are changed to those that were inputted.

![image](https://user-images.githubusercontent.com/92316932/150652611-3fd64e20-cf95-4bc7-9632-7db692e063f5.png)


### User Story 4 ###
The collections page displays the 6 available collections along with information on the collection's release date and how many of the cards are in the collection. Each collection card has a button "Open Collection" that redirects directly to that collections assets.

![image](https://user-images.githubusercontent.com/92316932/150632937-71e1be5e-680a-4800-8c90-679bebf96aad.png)

Once a collection has been clicked, the cards in the collection are shown. Each card can then be opened by pressing their respective button.
Normal view           |  Collapsed responsive view
:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/92316932/150633144-0cf1c67a-4d88-4c9e-b2e9-34b33cf64587.png) | ![image](https://user-images.githubusercontent.com/92316932/150633167-f662bd97-a047-4e47-95b6-6a3b9810d250.png)

Once a card has been opened information about the card will be displayed along with the card image. Further features available in this view are the favourite (heart) function and the add to collection function (+). Clicking these functions will add the card to the user's favourites and/or collection, and will alter the submission icons from an empty heart to a full heart and from a plus to a minus. These new submission icons can be clicked to remove the card from the user's favourites and/or collection. 

Add to collection            |  Remove from collection
:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/92316932/150633327-7acd7ef8-e155-4cba-a90c-94e5c3f3cd13.png)  |  ![image](https://user-images.githubusercontent.com/92316932/150633716-f1bc3e0d-cde6-4b74-9a08-b5d8ab6f3a7b.png)

### User Story 5 ###
Users can view their collection and favourited cards by clicking on "My Collections" in the top left hand corner. By default the "My Pokemon" collection which contains all of the pokemon that the user added to their collection. If the user has cards from multiple sets then they will have to scroll down to browse through the sets. The user can navigate to their favourites by clicking "Favourites" located to the right of "My Pokemon". Here an identical interface is shown but the view may differ depending on the favourited cards. Cards can be removed from the collection directly from these two views in the same manner that they were added.

My Pokemon           |  Favourites
:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/92316932/150634094-b7fee834-b1d6-4391-acb7-525b00896350.png) | ![image](https://user-images.githubusercontent.com/92316932/150635562-bc48e921-ae3b-4ad9-a904-434cd10b315b.png)

Users are also able to utilise the search bar to find a specific Pokemon across multiple sets. The search engine searches through the database and retrieves results that contain the search query (see example below)

Search query "Pikachu"           |  Search query "Pi"
:-------------------------:|:-------------------------:
![image](https://user-images.githubusercontent.com/92316932/150636502-398ad233-6cd7-4a5e-812d-ee8889f1bc87.png) | ![image](https://user-images.githubusercontent.com/92316932/150636593-ab7a76cb-8f4d-4551-9f73-43470308b7b6.png)

### User Story 6 ###
The website is also accessible by mobile devices and offers a sleek minimalistic browsing experience.
Sign up           |  Login
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/92316932/150637334-8878845e-007e-45ad-88c1-895cbf7aca1b.png" width=50% height=50%> | <img src="https://user-images.githubusercontent.com/92316932/150637329-f746f518-dbaa-4cdc-b945-108c819a2383.png" width=50% height=50%>

My profile           |  Collection
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/92316932/150637414-d440bc24-2a8b-4fe9-baee-88ddd506ca36.png" width=50% height=50%> | <img src="https://user-images.githubusercontent.com/92316932/150637353-651ee2c0-7fd9-43db-8603-ac01c1eebe38.png" width=50% height=50%>


My collection          |  Search query "Pikachu"
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/92316932/150637385-d1227a80-47e8-40cb-a395-28d1e020f721.png" width=50% height=50%> | <img src="https://user-images.githubusercontent.com/92316932/150637390-19edecca-4dd9-482e-9e6b-fe80e6251e3b.png" width=50% height=50%>


### User Story 7 ###
The overall website visuals conform to the Pokemon theme. The images used form a pleasing contrast with the white background and grey menu bar. The user experience is pleasant and the interface is simple and easy to use. The minimalistic design prevents users from being overwhelmed and grants the website an increased level of accessibility.

## Use Cases ##
### Use Case 100 ###
<img src="https://github.com/andreas-ruedisuehli/PokemonWebApplication/blob/99f24144a69d368708e095963e9078981255d18e/UseCases/UC100.PNG" width=40%>

- Use Case 101 (Sign up): A user can sign up for the website. To create an account, the user must enter a user name, an email address and a password. In addition the user must agree to the terms and conditions.
- Use Case 102 (Log in): Once a user has created an account they can log in using their email address and their password.
- Use Case 103 (Update Profile): The user can update their user profile once they are logged in.
- Use Case 104 (Log out): After being logged in, the user can log out again.

### Use Case 200 ###
<img src="https://github.com/andreas-ruedisuehli/PokemonWebApplication/blob/ccea646579108e98664e79c4477012af51214ebf/UseCases/UC200.PNG" width=40%>

- Use Case 201 (View Collections): The user can view the collections which are included in the website. Clicking on a collection will open an overview of the individual cards within the set.
- Use Case 202 (Select Card): The user can select an individual card–the chosen card is then displayed alone with additional information.
- Use Case 203 (Add/remove Card to/from Collection): A user can add or remove a card to their personal collection of cards.
- Use Case 204 (Add/remove Card to/from Collection): A user can add or remove a card to their list of favorite cards.
- Use Case 205 (View own Collection/Favorites): The user can review a list of the cards which are currently selected as favorites or a list of the cards which they added to their personal collection.
- Use Case 206 (Search Card): Using the search field, the user can search for a specific card by entering a search-phrase.

## Design ##
### Prototype Design ###
A bootstrap based static prototype has been created by using a prototyping application.

In this case, the prototype application Bootstrap Studio has been used to create a basic user interface design based on an HTML grid, Bootstrap CSS and JavaScript, including the selection of web fonts and font-based icons.

The assets (HTML, CSS, JavaScript, image and font files) has been exported and will be extended in the later during implementation with jQuery, to build a dynamic website.

### Domain Design ###
The ch.fhnw.acrm.data.domain package contains the following domain objects / entities including getters and setters:

### Business Logic Design ###
The below SQL relational model displays the relationships contained within this implementation.

<img width="531" alt="SQL Database" src="https://user-images.githubusercontent.com/92316932/150654174-6efa20ae-2a64-4e37-9fac-8ea7c0e37465.png">


### Endpoint Design ###
Path: /api/customer

Method: POST

Sample Request • Header: Content-Type: application/json • Body:

{
  "agent": {
    "customers": [
      null
    ],
    "email": "string",
    "id": 0,
    "name": "string",
    "password": "string",
    "remember": "string"
  },
  "email": "string",
  "id": 0,
  "mobile": "string",
  "name": "string"
}
• Optional: ...

Success Response • Code: 200 OK • Sample Body:

{
  "agent": {
    "customers": [
      null
    ],
    "email": "string",
    "id": 0,
    "name": "string",
    "password": "string",
    "remember": "string"
  },
  "email": "string",
  "id": 0,
  "mobile": "string",
  "name": "string"
}
Error Response • Code: 404 NOT FOUND

## Implementation ##

### Backend Technology ###
This Web application is relying on Spring Boot and the following dependencies:

* Spring Boot
* Spring Web
* Spring Data
* Java Persistence API (JPA)
* H2 Database Engine
* PostgreSQL
* To bootstrap the application, the Spring Initializr has been used.

Then the following further dependencies has been added to the project pom.xml:

Swagger and Swagger UI:
<dependency>
    <groupId>io.springfox</groupId>
    <artifactId>springfox-boot-starter</artifactId>
    <version>3.0.0</version>
</dependency>
Java HTML Parser and JWT:
<dependency>
    <groupId>org.jsoup</groupId>
    <artifactId>jsoup</artifactId>
    <version>1.14.2</version>
</dependency>
<dependency>
    <groupId>io.jsonwebtoken</groupId>
    <artifactId>jjwt-api</artifactId>
    <version>0.11.2</version>
</dependency>
<dependency>
    <groupId>io.jsonwebtoken</groupId>
    <artifactId>jjwt-impl</artifactId>
    <version>0.11.2</version>
    <scope>runtime</scope>
</dependency>
<dependency>
    <groupId>io.jsonwebtoken</groupId>
    <artifactId>jjwt-gson</artifactId>
    <version>0.11.2</version>
    <scope>runtime</scope>
</dependency>
### Frontend Technology ###
This Web application is relying on the following frontend technology/libraries:

jQuery
Bootstrap

## Deployment ##
The Java Web Application is built on an Apache Tomcat Server which is running on a VPS (IP 92.205.63.166). We bought a Domain name: www.pokemon-collector.ch
which is now directed to our VPS (http://92.205.63.166:8080/pokemon) with the aid of A records and an NGIX reverse proxy (see configuration file in repository).
SSL was set up with Let's Encrypt. When opening www.pokemon-collector.ch from an external browser only the home page loads, however the remaining features
are yet to function. When using http://92.205.63.166:8080/pokemon everything works as intended. The SQL database runs locally on our VPS (see in repository).

## User Guide ##
The Web application can be accessed over the browser by using the following address: http://92.205.63.166:8080/pokemon. An incomplete version can also be found at https://www.pokemon-collector.ch/ this site however can only displays the homepage and the remaining features are yet to function.

## Project Management ##
### Members ###
Andreas Rüdisühli
* Backend

Sven Varkonyi
* Generalist

Matthias Allemann
* SQL

Jarik Geyer
* Frontend

### Maintainer ###
Andreas Rüdisühli & Jarik Geyer
### Licenses ###
* Apache License, Version 2.0
* Let's Encrypt
* NGIX

