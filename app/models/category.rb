class Category < ActiveRecord::Base

	has_many :project1_categories
	has_many :project1s, through: :project1_categories
end
