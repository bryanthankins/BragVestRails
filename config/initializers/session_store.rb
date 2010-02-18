# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_BragVestRails_session',
  :secret      => '622ff7313328ff11d3bb8ae493dee2aa6027a1aef95359ab592efb4e4f56d441c4db28ddce88bcdb73871ee4da0ddbe1bef3e2edc1c8b34169371fd23cbf6bd5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
