class ApplicationController < ActionController::Base

  private

  def current_room
    @room ||= Room.find(session[:current_room]) if session[:current_room]
  end
  
  helper_method :current_room
end
