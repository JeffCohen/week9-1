class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :log_incoming_cookies
  after_action  :log_outgoing_cookies
  
  helper_method :user_cookies

  def user_cookies
    jar = {}
    cookies.each do |key, value| 
      if !key.starts_with?('_') && key != 'request_method'
        jar[key] = value
      end
    end
    jar
  end

  def log_incoming_cookies
    jar = user_cookies
    if jar.any?
      logger.debug "Incoming Cookies: #{jar.inspect}" 
    end
  end
  
  def log_outgoing_cookies
    jar = user_cookies
    if jar.any?
      logger.debug "Outgoing Cookies: #{jar.inspect}" 
    end
  end
end
