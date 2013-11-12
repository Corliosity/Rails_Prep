class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :require_login
  
  protected
    def require_login
      if request.format == Mime::HTML 
        unless Person.find_by_id(session[:person_id])
          redirect_to login_path, notice: "Please log in before continuing"
        end
      else
        authenticate_or_request_with_http_basic do |email, password|
          person = Person.find_by_email(email)
          person && user.authenticate(password)
        end
      end
    end
  
end
