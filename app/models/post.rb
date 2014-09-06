class Post < ActiveRecord::Base
	belongs_to :user
	has_many :votes

	validates :title, presence: true,
 									 length: { maximum: 100 }
	
	validates :description, presence: true,
 									 length: { maximum: 100 } 									 
end
