class SessionsController < ApplicationController
	def new
		
	end

	def create
		# find student by email
		student = Student.find_by(email: params[:login][:email].downcase)
		# condition if there is a student and student pwd is correct or not
		if student && student.authenticate(params[:login][:password])
			# set the session to the current user temporarily
			session[:student_id] = student.id
			flash[:notice] = 'You have successfully logged in'
			redirect_to student
		else
			flash.now[:danger] = "Something was wrong with your credentials"
			render 'new'
		end
	end

	def destroy
		# make the current id nil
		session[:student_id] = nil
		flash[:notice] = 'You have successfully logged out'
		redirect_to students_path
	end
end