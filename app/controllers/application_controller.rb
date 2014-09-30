class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  before_filter :check_logged_in

  def check_logged_in
	unless signed_in? || params[:controller]=="sessions"
		store_location
		redirect_to signin_url, notice: "Please sign in."
	end
	#puts "Signed in = "+signed_in?.to_s
	#puts "Sessions controller = "+(params[:controller]=="sessions").to_s
	#puts "Action = new? "+(params[:action]=="new").to_s
	#puts "Action = create? "+(params[:action]=="create").to_s
  end
end
