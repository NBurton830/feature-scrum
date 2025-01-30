class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Add shared functionality for other controllers here
end