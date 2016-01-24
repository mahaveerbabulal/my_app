class TasksController < ApplicationController

	before_filter :authenticate_user!
	load_and_authorize_resource

def mark_as_complete
	@task = Task.find(params[:task_id])
	@task.update_attributes(is_completed: true)
	Notification.notify_completed(@task).deliver!
	redirect_to :back, notice: "Successfully marked the task as complete"
end

def mark_as_incomplete
	@task = Task.find(params[:task_id])
	@task.update_attributes(is_completed: false)
	Notification.notify_incompleted(@task).deliver!
	redirect_to :back, notice: "Successfully marked the task as incomplete"
end

def create
	@task = Task.new(task_params)
	if @task.save
		redirect_to project1_path(@task.project1_id), notice: "New Task Created"
	end
end

private

	def task_params
	params[:task].permit(:name, :due_date, :is_completed, :project1_id)
	end

end
