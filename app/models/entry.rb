class Entry < ActiveRecord::Base
	belongs_to :proyect
	validates :hours, :minutes, numericality: {only_integer: true, message: "How could this not be a number??!!"}
end
