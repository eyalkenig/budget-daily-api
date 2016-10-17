class Setup < ApplicationRecord
  belongs_to :user
  has_many :incomes
end
