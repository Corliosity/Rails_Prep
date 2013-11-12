class SessionsController < ApplicationController
 
 skip_before_filter :require_login


  def new
  end

  def create
    person = Person.find_by_email(params[:email])
    if person && person.authenticate(params[:password])
      session[:person_id] = person.id
      redirect_to root_url, :notice => "#{person.name} Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:person_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
