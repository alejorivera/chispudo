class Post < ActiveRecord::Base
	belongs_to :user
	has_many :votes

	validates :title, presence: true,
 									 length: { maximum: 100 }
	
	validates :description, length: { maximum: 500 } 									 
end
