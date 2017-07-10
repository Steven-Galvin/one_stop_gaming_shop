# README

# Coffee Shop

## Description

#### _**This site is designed for a coffee distributer, allowing them to display their products and have customers submit reviews on individual products**_

#### _**By Tyler Stephenson, July 07, 2017**_

### Setup/Installation Requirements
* clone <link to repo>
* cd <local repo>
* run this series of commands:
  * `$ bundle install`
  * `$ rails db:create`
  * `$ rails db:migrate db:test:prepare`
  * `$ rails db:seed`
  * `$ rails s`
* navigate to localhost:3000 in your prefered web browser.

## Planning

1. Specs
  * Use Bootstrap for base styling.
  * user model.
      * name - string
      * email - string
      * account_id - integer
      * password_hash - string
      * password_salt - string
      * admin - boolean
      * timestamps
  * user validations.
    * presence and uniqueness of email
  * user relationships
    * has one account

  * account model.
      * user_id - integer
      * timestamps
  * account relationships
    * belongs to user

  * order model.
      * status - string
      * total_price - integer
      * account_id - integer
      * timestamps
  * order relationships
    * belongs to account
    * have many order items

  * order items model.
      * quantity - integer
      * order_id - integer
      * product_id - integer
      * timestamps
  * order items relationships
    * belongs to order
    * belongs to product

  * product model.
      * name - string
      * cost - number
      * type - string
      * genre - string
      * description - string
      * image - attachment
      * timestamps
  * product validations.
    * presence of name
    * presence of cost
    * presence of type
    * presence of genre
    * presence of description
  * product relationships
    * has many reviews

  * review model.
      * author - string
      * body - string
      * product_id - integer
      * timestamps
  * review validations.
    * presence of author
    * presence of body
  * review relationships
    * belongs to product

  * seeding using Faker
    * 50 products
    * 250 reviews

2. User Stories
  * As a user, I should be able to add and remove items from my shopping cart.
  * As a user, I'd like to see my shopping cart updated when I make changes.
  * As a user, my shopping cart should be cleared once I've completed my order.
  * As a user, I'd like to see the number of items in my shopping cart and the total cost of my order in the navbar (and not just on the shopping cart page).
  * As a user, I'd like to be able to see which items are on sale, along with the percentage they've been discounted.
  * As a user, I'd like to be able to pay for my order online (see API User Stories below).
  * As a user, I'd like to be able to sign up and create an account.
  * As a user, I'd like to see a history of my previous orders.
  * As a user, I'd like to be able to tag products to "Save for Later." These will show up on my shopping cart page but will not be in my shopping cart. I should be able to move them into my shopping cart if I want.
  * As a user, I'd like to see if there are fewer than ten of an item in stock.
  * As a user, I'd like to be able to see and add reviews to products.
  * As a user, I'd like my current shopping cart to be associated with my account so I can log in and access my cart from any device.
  * As a user, I'd like to receive a confirmation email once I've completed my order.
  * As a user, I'd like to receive an email once my order has been shipped. (Only do if you work on shipping employee stories.)

Admin Stories:
  * As an admin, I should have full CRUD functionality to add products.
  * As an admin, I'd like to ensure that the price of an item can't change for a user if the item is already in the user's shopping cart.
  * As an admin, I'd like to be able to feature certain items by using a "featured" boolean.
  * As an admin, I'd like the order cost to include shipping and sales tax (see API User Stories below).
  * As an admin, I'd like to be able to easily mark an item as on sale. (Items could have a sale_price as well as a list_price.)
  * As an admin, I'd like to be able to set the amount of time a sale will last so it automatically ends when the time expires.
  * As an admin, I'd like to be able to provide discounts to "preferred" users.
  * As an admin, I'd like to make sure that customers can't order items that are out of stock. They also shouldn't be able to order more of a product than is available.
  * As an admin, I'd like customers to be able to add reviews to products, but ONLY if they've already purchased the product.

4. UX/UI
  * Include and modify bootstrap/materialize/Sass etc.
  * Develop custom style

5. Polish
  * Refactor
  * Make README awesome

### Known Bugs
No known bugs at this time.

## Support and Contact details
* Tyler Stephenson
* ilduchea@gmail.com

### Technologies Used

* Ruby
* Rails
* HTML5
* CSS
* Bootstrap
* jQuery

### License

*This is web page is licensed under the MIT License.*

Copyright (c) 2017 **Tyler Stephenson**
