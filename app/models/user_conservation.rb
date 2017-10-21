class UserConservation < ApplicationRecord
  belongs_to :user
  belongs_to :conservation
end
