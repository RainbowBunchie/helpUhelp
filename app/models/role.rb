class Role < ApplicationRecord
	has_many :users
	validates :title, presence: true, uniqueness: true, length: { minimum: 2 }
end