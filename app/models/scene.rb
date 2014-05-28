class Scene < ActiveRecord::Base

	# relations
	belongs_to :chapter

	# validations name 
	validates :name, presence: true
	validates_uniqueness_of :name

	# validations narrative
	validates :narrative, presence: true
	validates_length_of :narrative, minimum: 30, message: "doit faire minimum 30 caracteres"

	# validations period
	validates :period, presence: true

end
