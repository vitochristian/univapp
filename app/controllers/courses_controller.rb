class CoursesController < ApplicationController
	def index
		# make an object for data inside courses table
		@courses = Course.all
	end

	def new
	end

end
