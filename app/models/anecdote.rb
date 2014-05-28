class Anecdote < ActiveRecord::Base

	# relations
	belongs_to :chapter

	# validations subject 
	validates :subject, presence: true
	validates_uniqueness_of :subject

	# validations description
	validates :description, presence: true
	validates_length_of :description, minimum: 10, message: "doit faire minimum 10 caracteres"

end
