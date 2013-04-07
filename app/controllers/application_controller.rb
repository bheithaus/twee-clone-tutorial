class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :app_name

  def app_name
    "MaxFun"
  end
end
