class ProyectsController < ApplicationController
	def index
		# @projects = Project.limit(10).order(created_at: :desc)
		@projects = Project.last_created_projects(10)
	end
end
