clients = Client.all

clients.each do |client|
	puts "Client :#{client.name}"
	projects = client.project1s
	projects.each do |project|
		puts "Project :#{project.name}"
		tasks = project.tasks
		tasks.each do |task|
			puts "Task :#{task.name}"
		end
	end
end


