class Order < ApplicationRecord
	has_many :idea_oders
	has_many :idea_items
	has_many :ideas, through: :idea_items
end
