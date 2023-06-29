class Lease < ApplicationRecord
    belongs_to :apartmentt
    belongs_to :tenant 
end
