class Company < ApplicationRecord
  has_many :offices, dependent: :destroy
  has_many :buildings, through: :offices
  has_many :employees, dependent: :destroy
end
