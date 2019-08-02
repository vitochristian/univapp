class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :edit, :update]
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
			flash[:notice] = "You have successfully signed up"
			redirect_to root_path
		# condition if it fails to save
		else
			# open new sign up template
			render 'new'
		end

	end

	def show
		
	end

	def edit
		
	end

	def update
		# collect the data from table and edit the student params
		if @student.update(stud_params)
			flash[:notice] = "You have successfully updated your profile"
			redirect_to @student
		else
			render 'edit'
		end
	end

	private
	def set_student
		# find the intended student
		@student = Student.find(params[:id])
	end

	# whitelist the student obj so it can be saved
	def stud_params
		# the parameters require obj student to exist and allowing all which are written to be save to the obj later on
		params.require(:student).permit(:name, :email, :password, :password_confirmation)
	end
end
