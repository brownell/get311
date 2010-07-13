# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_mitmobile_session',
  :secret      => 'abd3cd98d6e4a59d64ab8ec485cd840575c7ba2899a58101958f9ef36becae802c141344ddbd764c23b0c5d5eaa144cb9078bb45365c779439eccd2d2eed0652'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
