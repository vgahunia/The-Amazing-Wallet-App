class User < ActiveRecord::Base

	has_many :cards, through: :usercards
	has_many :usercards
	validates_presence_of :email
	
end
