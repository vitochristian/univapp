class CreateCourses < ActiveRecord::Migration[5.2]
  def change
  	# add short_name, name, desc column to the courses table
    create_table :courses do |t|
    	t. string :short_name
    	t. string :name 
    	t. text :description
    	t. timestamps
    end
  end
end
