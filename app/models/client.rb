class Client < ActiveRecord::Base
	has_many :project1s
	belongs_to :user


	validates_presence_of :name, :company
	validates_presence_of :website, message: "Contact us if you require a website"
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, allow_blank: true
	validates_numericality_of :mobile
	validates_length_of :mobile, is: 10

end

=begin
	def list_projects
		Project1.where('client_id = ?', id)
	end
	def list_completed_projects
		Project1.where('client_id =? AND status =?', id, "completed")
end
=end
