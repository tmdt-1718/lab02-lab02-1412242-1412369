class User < ApplicationRecord
  has_secure_password
  has_and_belongs_to_many :conservations
  has_and_belongs_to_many :friends
end
