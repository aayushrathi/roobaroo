class Pin < ActiveRecord::Base
	belongs_to :user
	has_many :votes, dependent: :destroy
	has_many :upvoted_users, through: :votes, source: :user
	acts_as_votable

	def score
		self.get_upvotes.size
	end
end

