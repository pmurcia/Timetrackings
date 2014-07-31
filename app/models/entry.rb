class Entry < ActiveRecord::Base
	belongs_to :proyect
	validate :hours, :minutes, numericality: {message: "How could this not be a number??!!"}
end
