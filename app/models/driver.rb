class Driver < ActiveRecord::Base
  has_many :trips
  validates :first_name, :last_name, presence: true
end
