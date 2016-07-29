class Trip < ActiveRecord::Base
  belongs_to :driver
  belongs_to :city

  validates :driver, :city, :payment_method, :pickup, :car, presence: true

  def self.create_trips_array
    trips = []
    Trip.all.each do |trip|
      trips << [{trip_details: trip}, {driver: trip.driver}, {city: trip.city}]
    end
    
    return trips
  end
end
