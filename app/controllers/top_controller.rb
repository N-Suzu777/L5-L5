require 'bcrypt'

class TopController < ApplicationController
  def main
    if session[:login_uid] != nil
      render "main"
    else
      render "login"
    end
  end

  def login
    uid_login = User.find_by(uid: params[:uid])
    u_pass = BCrypt::Password.create(params[:pass])
    if BCrypt::Password.new(u_pass) == params[:pass]
      session[:login_uid] = params[:uid]
      redirect_to root_path
    else
      render "error"
    end
  end

  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end