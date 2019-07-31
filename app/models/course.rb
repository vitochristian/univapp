class Course < ApplicationRecord
	# model name must be singular while table name must be plural
	validates :short_name, presence: true, length: {minimum: 3, maximum: 15}
	validates :name, presence: true, length: {minimum: 5, maximum: 50}
	validates :description, presence: true, length: {minimum: 10, maximum: 300}

end
