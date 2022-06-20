# Mario's specialty Food Products 🎣 🍣
#### Created by _Justice Douglas_
A CRUD web application built to display my understanding of Ruby on Rails during my time at Epicodus.
## Technology Stack
- Ruby
- Ruby on Rails
- Potsgres
- Faker
- Pry
- Rspec
- HTML
- RailsAdmin
- Capybara
- Devise
## Description

A small CRUD web application MVP meant to display a fictional online marketplace's food products. It will allow users to add, view, edit and delete products as well as reviews with full authentication and authorization functionality utilizing Devise.

## Setup/Installation Requirements

- git clone this repository
- cd marios_specialty_food_products
- bundle install
- rake db:create
- rake db:test:prepare
- rake db:migrate
- rake db:seed
- rails s 
- Navigate to localhost:3000 in your default browser.

## User Stories and Account Type Information

### Preseeded Accounts for Testing
Must seed the database before preseeded accounts are available for utilization.

1. User
- Email: user@test.com
- Password: Password!123

2. Admin
- Email: admin@test.com
- Password: Password!123

### User
1. A user can sign-up / sign-in / sign-out.
2. A user can view products.
3. A user can view and add reviews to products.
4. A user can see a product with the most reviews.
5. A user can see the three most recently added products.
6. A user who is not signed in will only be allowed reading privileges.

### Admin
1. An admin can sign-up / sign-in / sign-out.
2. An admin can view products.
3. An admin can view product reviews.
4. An admin can add, update, delete products.
5. An admin can add, update, delete reviews from a products.


## Bugs
- None currently known.

## License

MIT Copyright 2022 (c) Justice Douglas

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.