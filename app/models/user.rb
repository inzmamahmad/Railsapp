class User < ApplicationRecord
  has_many :shipings
  has_many :ideas
  has_many :categoryys
  has_many :orders
  has_many :reviews, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
