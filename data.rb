	15.times do
	client = Client.new
	client.name = Faker::Name.first_name
	client.company = Faker::Company.name
	client.email = Faker::Internet.free_email(client.name)
	client.mobile = Faker::Number.number(10)
	client.save
	rand(1..9).times do
		project = Project1.new
		project.name = Faker::App.name
		project.description = Faker::Lorem.paragraph
		project.start_date = Faker::Date.between(Date.today.beginning_of_year, Date.tomorrow)
		project.status = ["new", "completed", "on_going", "archived"].shuffle.first
		project.client_id = client.id
		project.save
	rand(1..5).times do
		task = Task.new
		task.name = ["Vendor finalization", "hosting finalization", "client approval", "client metting", "client status"].shuffle.first
		task.due_date = Faker::Date.between(project.start_date, Date.today + 1.month)
		task.is_completed = [true, false].shuffle.first
		task.project1_id = project.id
		task.save
		end
	end
end