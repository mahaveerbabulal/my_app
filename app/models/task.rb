class Task < ActiveRecord::Base
	belongs_to :project1
	belongs_to :user

	validates_presence_of :project1_id
	validates_numericality_of :project1_id
	#validate :check_due_date

	private

	def check_due_date
		if !(due_date).nil? && due_date < project1.start_date
			errors.add(:due_date, "of task should be greater than #{project1.start_date}")
		end
	end
end
