desc "clear database"
task :clear_db => :environment do
	Client.delete_all
	Project1.delete_all
	Task.delete_all
	User.delete_all
	Profile.delete_all
end