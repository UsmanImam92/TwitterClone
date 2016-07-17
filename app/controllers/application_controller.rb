class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # the controller includes actions that are needed upon Get Request.


  def hello
    render html: "Jeelo"
  end

end
