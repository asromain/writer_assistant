class Theme < ActiveRecord::Base

	# relations
	belongs_to :anecdote

	# validations name 
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates_uniqueness_of :name

	# validations anecdote_id
	validates :anecdote_id, presence: true

end
