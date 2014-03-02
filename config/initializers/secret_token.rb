# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
    token_file = Rails.root.join('.secret')
    if File.exist?(token_file)
       File.read(token_file).chomp
    else
       token = SecureRandom.hex(64)
       File.write(token_file, token)
       token
    end
end

SampleApp2::Application.config.secret_key_base = '8543161839e340fe2c61a09ce8aa6ac4e6c637e919fbe19f8abb6a90327210a9f68a6ac34aaf5a198899eb3266b47783672fdba5b7cfbf487f2325f719dad88c'
