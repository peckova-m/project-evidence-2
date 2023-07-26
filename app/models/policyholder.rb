class Policyholder < ApplicationRecord
	has_many :contracts, dependent: :destroy
	has_many :policyholders, through: :contracts, dependent: :destroy
	validates :name, length: { minimum: 2 }
	validates :phone, uniqueness: true
end
