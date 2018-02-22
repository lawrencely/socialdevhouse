class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate
  before_action :current_user
  helper_method :logged_in?

  private

  def authenticate
    @current_user = User.find_by(:id => session[:user_id])
    session[:user_id] = nil unless @current_user.present?
  end

  def current_user
    @current_user = User.find_by(id: session[:user_id])
    session[:user_id] = nil unless @current_user.present?
    @current_user
  end

  def logged_in?
    current_user != nil
  end  
end
