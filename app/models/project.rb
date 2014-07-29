class Project < ActiveRecord::Base # Table has the name of the class in plural
	def self.iron_find(id)
		project = where(id: id).first
		unless project.present?
			raise
			ActiveRecord::RecordNotFound.new("Couldn't find project with id=#{id}")
		end
		project
	end

	def self.last_created_projects(number)
		Project.limit(number).order(created_at: :desc)
	end
end
