class Tenant < ApplicationRecord
    has_many :apartmentts, through: :leases
    has_many :leases

    validates :name, :age, presence: true
    validates :age, numericality: { greater_than_or_equal_to: 18 }
end
