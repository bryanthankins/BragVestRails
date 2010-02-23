# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  protected

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  helper_method :current_user

  def current_user=(user)
    session[:user_id] = user.try(:id)
    @current_user = user
  end
  
  def login_required
    if session[:user_id]. nil?    	
       redirect_to :controller => :users, :action => :new	
    end
  end

  
 # def login_required
  #  return true if logged_in?
   # session[:return_to] = request.request_uri
#    redirect_to new_session_path and return false
#  end
  
 # def logged_in?
  #  ! @current_user. nil?
  #end
  #helper_method :logged_in?

  def access_denied
    flash[:error] = "You do not have access!"
    redirect_to :controller => :user, :action => :new
  end
end