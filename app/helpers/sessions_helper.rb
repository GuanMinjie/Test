module SessionsHelper
  def log_in(user)
     session[:user_id] = user.id

  end
  def   current_user
    @current_user = @current_user||User.find_by(session[:user_id])
  end
  def  logged_in?
    !current_user.nil?
  end
  def logged_out
    delete(session[:user_id])
    @current_user =nil
  end
end
