class Anecdote < ActiveRecord::Base

	# relations
	belongs_to :chapter
	has_many :themes, dependent: :destroy

	# validations subject 
	validates :subject, presence: true, uniqueness: { case_sensitive: false }
	validates_uniqueness_of :subject

	# validations description
	validates :description, presence: true
	validates_length_of :description, minimum: 10, message: "doit faire minimum 10 caracteres"

	# validations chapter_id
	# validates :chapter_id, presence: true

end
