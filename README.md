# README

Authentication - provide credentials required
Authorization - defines what authenticated user has access to within the app

- Devise gem - gives us authentication/authorization
  $ bundle add devise

JWT : JSON Web Token, needs secret key

localStorage - JS property that allows us to store k-v pairs in browser

Step 1: add gems:
gem 'devise-jwt'
gem 'rack-cors'

Step 2: Create CORS file

Step 3. Update devise.rb

Step 4. Add controllers/routes for Devise

- registration and sessions
