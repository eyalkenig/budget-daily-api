class User < ApplicationRecord
  has_secure_password

  has_many :setups
  has_many :expenses
end
