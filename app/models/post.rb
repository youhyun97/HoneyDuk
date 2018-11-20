class Post < ApplicationRecord
	belongs_to :user
	has_many :likes
	has_many :comments

	def self.search(query)
		self.where("title || content LIKE ?","%#{query}%")
	end
end
