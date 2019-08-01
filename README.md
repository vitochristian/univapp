# README

* Ruby version: 
	2.6.3
* Rails version:
	5.2.3

This is UnivApp, created for learning ruby and ruby on rails.

Below, I have written the steps taken to build this app:
1. Create new Rails project from the terminal:
	$rails new project_name
2. Set the root route:
  2. 1. Open config -> route.rb
  2. 2. Type in root 'controller_name#action_name'
  2. 3. Open controller folder
  2. 4. Create controller file based on what has been written in the route
  2. 5. Type in: 
  		*	class ControllersName < ApplicationController
  		*		def action_name
  		* 	 	end
  		*  	end
  2. 6. Open view folder
  2. 7. Create a file based on the action_name (.html.erb)
3. Save your work on github:
  3. 1. Open github on the browser
  3. 2. Create new repo
  3. 3. Type this in the terminal:
		*	$ git init
		*	$ git add -A
		*	$ git commit -m "Type anything based on what your worked on"
		*	$ git remote add origin git@github.com:github_username/projectname.git
		*	$ git push -u origin master
 4. To start your server, type in: $ rails s
 5. Add new routes:
 	5. 1. get 'pathname', to: 'controllername#action'
 	5. 2. make the controller (if not exist)
 	5. 3. make the action inside the controller
 	5. 4. make the view under the folder with the corresponding name
6. Add styling to the website with frameworks like Bootstrap, materialize, semantic-ui, etc.
	6. 1. install the gem
	6. 2. make a new css file (custom.css.scss)
	6. 3. follow the steps on the installation guides
7. Add navbar:
	7. 1. Copy the navbar code and make a new '(underscore)navigation.html.erb' partial under layouts
	7. 2. Render the navbar in the 'application.html.erb' file <%= render 'layouts/navigation' %>
	7. 3. Use container so there are some paddings on your website
8. Add footer:
	8. 1. Copy the footer code and make a new footer partials under layouts
	8. 2. Render the navbar in the 'application.html.erb' file <%= render 'layouts/footer' %>
	8. 3. Edit custom.css.scss so the footer get sticky
9. Add dropdown menu:
	9. 1. Copy the dropdown code to the intended navigation item
	9. 2. Install jquery-rails gem: gem "jquery-rails"
	9. 3. Input jquery in the application.js obtained from the frontend frameworks sites
	9. 4. To enable turbolinks add this code first -> $ (document).on('turbolinks:load', function(){jquerycodeshere})
10. Add hamburger icon:
	10. 1. Copy the code to the navigation partial (see the file and look for side-nav trigger)
	10. 2. Add the jquery codes to application.js to enable the trigger
	10. 3. To enable 2 or more dropdown in 1 page use different dropdown id (see the navigation file)
11. Add a style to home page:
	11. 1. Use grid and look for the code (see index.html.erb) to make the text align correctly
	11. 2. Use cards to make the course list more stylist
	11. 3. Add some css and give some colors or theme to your website
12. For the backend:
	12. 1. Create migration from the console: $rails generate migration create_tablename
	12. 2. Edit the migration file and fill in the required fields
	12. 3. Create model with the same name
			class Modelname < ApplicationRecord
			end
13. Grab the data from table and display it on view:
	13. 1. Make an instance in the controller (with the corresponding name) ex.:@courses = Course.all
	13. 2. Do an iteration to display the data:
			<% @courses.each do |objectname| %>
				<%= objectname.fieldname %> and so on...
			<% end %>
14. Create another migration for user/student/etc.:
	14. 1. Validates email use this code 
	*	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i  
	*	validates :email, presence: true, length: { maximum: 105 },            
	*                     uniqueness: { case_sensitive: false },            
	*                       format: { with: VALID_EMAIL_REGEX }
	14. 2. To turn all the chars to downcase:
	*	before_save {self.email: email.downcase}
15. Create a new page for student#index and student#new (see the index.html.erb and new.html.erb under the students view folder)
16. Create students and show up errors:
	16. 1. On students_controller add create method which has private method to send the appropriate fields to the db 
	16. 2. Give some condition on the create method to show what to do with success or fail condition
	16. 3. Show the errors on the sign up page
17. Modify the errors msg and show success msg (see the file directly)
18. Create show, edit, update method in user_controller and make the pages (see the file directly)
19. DRY your code Don't Repeat Yourself:
	19. 1. Find codes which repeated more than once and make a new method or new partial
	19. 2. If you find repeated codes in controller make a new private method for that particular code and have a before_action command above the codes (see students_controller file)
	19. 3. If you find repeated codes in the HTML files make a partials (see form.html.erb)
	19. 4. If you find repeated codes which can be used throughout the whole project, make a new shared folder and put the partial inside it (see errors.html.erb)
20. Add password:
	20. 1. Activate gem bcrypt
	20. 2. Do bundle install
	20. 3. Add has_secure_password in the specific model
	20. 4. Insert all password to existing data (in the rails console):
	*	student = Student.first
	*	student.password = "password"
	*	student.save
	*	Student.all.each do |student|
	*		student.password = "password"
	*	student.save
	*	end