class SessionsController < ApplicationController
# displays login form


  def new
  	if current_user
  		redirect_to tasks_path
  	end
  end

  # checks login data and starts session
  def create
    reset_session # prevent session fixation
    par = login_params
    @email = par[:email]
    user = User.find_by(email: par[:email])
    if user && user.authenticate(par[:password])
      session[:email] = nil
      # Save the user id in the session
      # rails will take care of setting + reading cookies
      # when the user navigates around our website.
      session[:user_id] = user.id
      redirect_to tasks_path
    else
      session[:email] = @email
      redirect_to login_path, alert: 'Falsches Passwort und/oder falsche E-Mail Adresse'
    end
  end

  # deletes sesssion
  def destroy
    reset_session
    redirect_to login_path, notice: 'Du wurdest ausgeloggt'
  end

private

  def login_params
    params.permit(:email, :password)
  end
end
