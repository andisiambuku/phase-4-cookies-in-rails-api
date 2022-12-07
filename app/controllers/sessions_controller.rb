class SessionsController < ApplicationController
  
  def index
    
    session[:session_hello] ||= "There"
    cookies[:cookies_hello] ||= "There"
    render json: { session: session, cookies: cookies.to_hash }
  end

end
