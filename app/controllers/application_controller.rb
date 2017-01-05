class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    session[:name]
  end

  def logged_in?
    !!session[:name]
  end

end
