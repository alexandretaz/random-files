# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lanruby_session',
  :secret      => '6d4a1a186cc7ad59f318d94ffee74e73096f6122c9e322a28cfa9d50f866e06a2db7b4062d4ac139fc2715f4337621471ac6111226637940c4679a0a418bcf60'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
