class User < ActiveRecord::Base
  has_many :recipes
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true, format: { with: /\A[\w.-]+@[\w.-]+.\w+\z/ }
end