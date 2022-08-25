class Categoryy < ApplicationRecord
	belongs_to :user
	has_many :ideas
end
