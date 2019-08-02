class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	
	# is not a common method but can be used for helper_method
	helper_method :current_user, :logged_in? 
	def current_user
		# to find curr user, || used for memoization so it doesn't look for user repeatedly
		@current_user ||= Student.find(session[:student_id]) if session[:student_id]
	end
	def logged_in?
		# to check if the user is there or not
		!!current_user
	end


end
