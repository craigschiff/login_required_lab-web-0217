class SessionsController < ApplicationController
# before_action :logged_in?


  def new
    render :'login'
  end

  def create
    if params[:name].nil? || params[:name].empty?
      flash[:error] = "incorrect username"
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/secrets'

    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
