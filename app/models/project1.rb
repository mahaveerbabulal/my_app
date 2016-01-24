class Project1 < ActiveRecord::Base
	# has_many :join_table
	# has_many :associated_table, throught: :join_table

	has_many :project1_categories
	has_many :categories, through: :project1_categories
	belongs_to :user

	belongs_to :client
	has_many :tasks, dependent: :destroy

	validates_presence_of :name, :description
	validates_length_of :description, maximum: 100


end

=begin
	def details
		"#{name} - #{status} - #{start_date} - #{Client.find(client_id).name}"
	end

	def list_tasks
		Task.where('project1_id = ?', id)
	end

	def self.list_new_projects
		Project1.where('status = ?', "new")
	end
=end
