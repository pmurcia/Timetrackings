class ProjectsController < ApplicationController
	def index
		# @projects = Project.limit(10).order(created_at: :desc)
		@projects = Project.last_created_projects(10)
	end

	def show
		@projects = Project.find params[:id]
		render layout: 'default'
	rescue
		render 'error', layout: 'error'
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new project_params

		if @project.save
			redirect_to action: 'index', controller: 'projects'
		else
			render 'new'
		end
	end

	private

	def project_params
		params.require(:project).permit(:name, :description)
	end
end
