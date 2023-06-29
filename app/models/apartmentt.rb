class Apartmentt < ApplicationRecord
    has_many :tenents, through: :leases
    has_many :leases
end
