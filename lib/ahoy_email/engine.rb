require "rails/engine"

module AhoyEmail
  class Engine < ::Rails::Engine
    initializer "ahoy_email" do |app|
      AhoyEmail.secret_token ||= ENV["SECRET_KEY_BASE"]
      AhoyEmail.belongs_to = {optional: true} if Rails::VERSION::MAJOR >= 5
    end
  end
end
