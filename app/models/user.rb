class User < ApplicationRecord
  has_and_belongs_to_many :conservations
  has_and_belongs_to_many :friends
end
