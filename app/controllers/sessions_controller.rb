class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secret_path(1)
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
