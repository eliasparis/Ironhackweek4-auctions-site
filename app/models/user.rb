class User < ActiveRecord::Base
	validates :name , :email , presence: true
	validates :name , :email , uniqueness: true
	has_many :products
end
