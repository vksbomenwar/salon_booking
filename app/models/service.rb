class Service < ApplicationRecord
	belongs_to :salon
	validates :name, :duration, :cost, presence: true
	validates :duration, :cost, numericality: { only_integer: true }
end
