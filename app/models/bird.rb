class Bird < ApplicationRecord
    has_may :sightings
    has_many :locations, through: sightings
end