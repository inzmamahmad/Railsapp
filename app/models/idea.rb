class Idea < ApplicationRecord

	has_many :idea_oders
	has_many :idea_items
	has_many :orders, through: :idea_items
has_many :reviews

has_many :comments
belongs_to :categoryy
belongs_to :user
	mount_uploader :picture, PictureUploader

end
