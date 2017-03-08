class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :verify_logged_in


  def verify_logged_in
    unless logged_in?
      flash[:error] = "you must be logged in to see page"
    end
  end

  def current_user
    if session[:name]
      session[:name]
    end
  end

  def logged_in?
    true if session[:name] && !session[:name].empty?
  end

end
