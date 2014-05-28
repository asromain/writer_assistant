class Scene < ActiveRecord::Base

	# relations
	belongs_to :chapter
	has_many :characters, dependent: :nullify

	# validations name 
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates_uniqueness_of :name

	# validations narrative
	validates :narrative, presence: true
	validates_length_of :narrative, minimum: 30, message: "doit faire minimum 30 caracteres"

	# validations period
	# validates :period, presence: true

	# validations place 
	# validates :place, presence: true

	# validations chapter_id
	# validates :chapter_id, presence: true

end
