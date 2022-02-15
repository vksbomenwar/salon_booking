class Booking < ApplicationRecord
	belongs_to :salon
	belongs_to :service
  
  before_validation :check_booking_availability
	before_validation :set_total_amount
	before_validation :set_booking_date

	def check_booking_availability
		if self.salon.present?
			if self.salon.no_of_chairs.to_i == 0
		    errors.add(:base, "Booking can not be done as no chairs available in salon")
		  elsif self.salon.no_of_chairs.to_i == 1 && Salon.bookings.pluck(:booking_time).include?(self.booking_time)
		    errors.add(:base, "Booking is already done for this time slot")
		  end
		end
	end

	def set_total_amount
		self.total_amount = self.service.cost
	end

	def set_booking_date
		self.booking_date = Date.today
	end
end
