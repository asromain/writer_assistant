class Character < ActiveRecord::Base

	# relations
	belongs_to :scene

	# validations name 
	validates :name, presence: true
	validates_uniqueness_of :name

	# validations role
	# validates :role, presence: true

end
