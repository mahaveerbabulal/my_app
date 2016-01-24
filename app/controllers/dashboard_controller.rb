class DashboardController < ApplicationController
  before_filter :authenticate_user!
 

  def index
  	@clients_count = is_admin? ? Client.count : current_user.clients.count
  	@projects_count = is_admin? ? Project1.count : current_user.project1s.count
  	@tasks_count = is_admin? ? Task.count : current_user.tasks.count
  end
end
