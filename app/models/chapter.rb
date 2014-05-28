class Chapter < ActiveRecord::Base

	# relations
	has_many :anecdotes, dependent: :destroy
	has_many :scenes, dependent: :destroy

	# validations numero chapitre
	validates :number, presence: true
	validates_numericality_of :number, message: "doit etre un nombre."
	validates_uniqueness_of :number

	# validations titre
	validates :title, presence: true, uniqueness: { case_sensitive: false }
	validates_length_of :title, minimum: 3, maximum: 30, message: "doit faire entre 3 et 30 caracteres"
	validates_uniqueness_of :title

end
