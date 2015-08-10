# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
Js4girlsRJRailsApi::Application.config.secret_token = '7276f290217ecb79ac59da9f3806eccc4b8bb466ee7e30bf17a263c3abcfaa08f9d2ae44a2630aac198754c9ffb1c2f1ddd67c1526d52ac2e626dc8a7b404b72'
