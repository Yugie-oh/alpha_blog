class ApplicationController < ActionController::Base
  # makes the method available in the view
  helper_method :current_user, :logged_in?

  # Having the current_user method here makes it avalable to all child controllers
  # Inheritance...
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end
