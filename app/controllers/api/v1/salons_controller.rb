class Api::V1::SalonsController < ApplicationController
	def get_time_slot_for_service
		errors = []
    data = []
		salon = Salon.find_by(id: params[:salon_id])
		service = salon.services.find_by(id: params[:service_id])
		if salon.present? && service.present?
      data = SalonSerializer.new(service, root: false) 
    else
      errors << 'Salon / service is not present'
    end
		render(
      json: {
        success: true,
        data: data,
        errors: errors
      },
      status: 201
    )
	end

	def salon_params
    array = [
      :salon_id,
      :service_id
    ]

    JSON.parse(params.to_json).symbolize_keys.slice(*array)
  end
end