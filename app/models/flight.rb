class Flight < ApplicationRecord
    has_many :flight_travels
    has_many :user_travels
end