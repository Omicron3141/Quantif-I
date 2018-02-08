module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Not currently used
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def not_found
    render 'sessions/unauthorized'
  end

  def proper_user(user_id)
    if session[:user_id] != user_id
      not_found
    end
  end
end
