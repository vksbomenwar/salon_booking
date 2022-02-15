class Salon < ApplicationRecord
	has_many :services, dependent: :destroy
	has_many :bookings, dependent: :destroy
	validates :company_name, :gstin, :pan_number, :address, :no_of_chairs, presence: true
	validates :no_of_chairs, numericality: { only_integer: true }
end
