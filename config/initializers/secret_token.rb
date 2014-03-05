# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# P4SampleApp::Application.config.secret_key_base = '4f273f90a7c92f446f33c81cdd76d0fa819ba74115b6b20aa6139680e2ce7c9c6141f363819df5b325dd840f6dc45db6f03e89ae9482258a88b607794a694404'

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

P4SampleApp::Application.config.secret_key_base = secure_token