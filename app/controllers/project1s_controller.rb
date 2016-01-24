class Project1sController < ApplicationController
	#layout 'clients'
	
	load_and_authorize_resource
	before_filter :authenticate_user!
	

	def index
		if params[:status].nil?
			@projects = current_user.project1s.paginate(page: params[:page], per_page: 5) #Project1.all 
		elsif params[:status] == "new"
		@projects = current_user.project1s.where('status = ?', params[:status])
		elsif params[:status] == "completed"
		@projects = current_user.project1s.where('status = ?', params[:status])
		elsif params[:status] == "archived"
		@projects = current_user.project1s.where('status = ?', "archived")
		elsif params[:status] == "on_going"
		@projects = current_user.project1s.where('status = ?', "on_going")
	else
		@projects = []
	end
	end

	def new
		@project = Project1.new
		#render layout: 'application'
	end

	def create
		@project = Project1.new(project_params)
		if @project.save
			redirect_to project1s_path, notice: "Successfully created the project for "
		else
			render action: 'new'
		end
	end

def edit
		@project = current_user.project1.find(params[:id])
	end

	def update
		@project = current_user.project1.find(params[:id])
		if @project.update_attributes(project_params)
			redirect_to project1_path(@project), notice: "Successfully updated the project #{@project.name}"
		else
			render action: 'edit'
		end
	end
	def show
		begin
			@project = current_user.project1.find(params[:id])
			@task = Task.new
		rescue ActiveRecord::RecordNotFound
			redirect_to project1_path, notice: "Project doesn't exit" 
		end

		end


private

		def project_params
			params[:project1].permit(:name, :description, :start_date, :status, :client_id)
		end

	end	
