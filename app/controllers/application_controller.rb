class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :is_admin?, :current_order

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      current_user.account.orders.create!
    end
  end

  def current_user
    if session[:user_id]
      if User.exists?(session[:user_id])
        @current_user ||= User.find(session[:user_id])
      else
        session[:user_id] = nil
      end
    end
  end

  def is_admin?
    current_user && current_user.admin
  end
end
