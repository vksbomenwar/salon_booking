class SalonSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :duration, :salon, :available_time_slot

  def salon
    object.salon.company_name
  end

  def available_time_slot
  	(Date.today.to_datetime.to_i .. Date.today.to_datetime.to_i).step(1.hour) do |date|
      puts Time.at(date)
    end
  end
end
