class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  helper_method :app_name

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end

  def app_name
    "MaxFun"
  end
end
