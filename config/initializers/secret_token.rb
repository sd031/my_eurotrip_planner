# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

MyEurotripPlanner::Application.config.secret_key_base = secure_token
MyEurotripPlanner::Application.config.secret_token = 'fc01d047e3c1364b035486e0d4533c5f062f368663a26a05cc76ec4b44734d810bbe0253b9fec4ad245b1940d3fd8b652eba1036b3609a27faf955a9d7d6cf3e'
