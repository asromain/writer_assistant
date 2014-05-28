class Chapter < ActiveRecord::Base

	validates :number, presence: true
	validates :title, presence: true

end
