class Project < ActiveRecord::Base # Table has the name of the class in plural
	has_many :entries
	validates :name, uniqueness: true 
	validates :name, presence: true
	validates :name, length: {maximum: 30}
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

	def self.total_hours_in_month(month, year)
		hours=[]
		entries.where(year-month-01) 
		entries.each do |a|
			hours = hours + a.hours + a.minutes/60
		end
		end
		# beggining date = Date.new(y, m, 1)
		# enddate = beggining date.end of month
		# entries in month = entries where(date:[begdate..enddate] )
		# entries in month inject(0) do |

	



end
