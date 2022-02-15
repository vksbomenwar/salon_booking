class Booking < ApplicationRecord
	belongs_to :salon
	belongs_to :service
end
