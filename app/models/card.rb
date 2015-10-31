class Card < ActiveRecord::Base

	belongs_to :user
	has_many :usercards

	validates :month, length: { maximum: 2 }

end
