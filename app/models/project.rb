class Project < ActiveRecord::Base # Table has the name of the class in plural
	def self.iron_find(id)
		project = where(id: id).first
		unless project.present?
			raise
			ActiveRecord::RecordNotFound.new("Couldn't find project with id=#{id}")
		end
		project
	end
end
