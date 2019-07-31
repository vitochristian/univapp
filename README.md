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
  2.1. Open config -> route.rb
  2.2. Type in root "controller_name#action_name"
  2.3. Open controller folder
  2.4. Create controller file based on what has been written in the route
  2.5. Type in: 
  	class ControllerName < ApplicationController
  		def action_name
  		end
  	end
  2.6. Open view folder
  2.7. Create a file based on the action_name (.html.erb)
3. Save your work on github:
  3.1. Open github on the browser
  3.2. Create new repo
  3.3. Type this in the terminal:
  	$ git init
  	$ git add -A
  	$ git commit -m "Type anything based on what your worked on"
  	$ git remote add origin git@github.com:github_username/projectname.git
  	$ git push -u origin master
 
