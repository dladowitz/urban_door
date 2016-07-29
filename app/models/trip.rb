class Trip < ActiveRecord::Base
  belongs_to :driver
  belongs_to :city

  validates :driver, :city, :payment_method, :pickup, :car, presence: true
end
