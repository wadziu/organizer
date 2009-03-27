# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_organizer_session',
  :secret      => '9994b29cf9efc311545e09fa80a21494fe5dff540ce5dce92a631bde535604f4d745d1cff39eb0fe2cd58096ff7a8f8db3ceb362c068d0db1a49a33843350d56'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
