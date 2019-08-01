class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def new
		@student = Student.new
	end 

	def create
		@student = Student.new(stud_params)
		# condition if student obj is saved
		if @student.save
			# give a success message
			flash[:success] = "You have successfully signed up"
			redirect_to root_path
		# condition if it fails to save
		else
			# open new sign up template
			render 'new'
		end

	end

	private
	# whitelist the student obj so it can be saved
	def stud_params
		# the parameters require obj student to exist and allowing name and email to be save to the obj later on
		params.require(:student).permit(:name, :email)
	end
end
