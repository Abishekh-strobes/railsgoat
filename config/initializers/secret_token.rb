# frozen_string_literal: true
# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# The secret is read from the SECRET_KEY_BASE environment variable so that it is
# never committed to source control. In development and test a random key is
# generated at boot, which means signed cookies do not survive a restart.
Railsgoat::Application.config.secret_key_base = ENV.fetch("SECRET_KEY_BASE") do
  if Rails.env.production?
    raise "SECRET_KEY_BASE environment variable must be set in production"
  end

  SecureRandom.hex(64)
end
