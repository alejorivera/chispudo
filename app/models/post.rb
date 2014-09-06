class Post < ActiveRecord::Base
	belongs_to :user
	has_many :votes
	has_many :team_assignments
	has_many :users, through: :team_assignments

	validates :title, presence: true,
 									 length: { maximum: 100 }
	
	validates :description, length: { maximum: 500 } 	

	def team_member_count
		TeamAssignment.where(post_id: id).count
	end					 
end
