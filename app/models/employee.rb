class Employee < ApplicationRecord
  belongs_to :company

  validates :name, length: { minimum: 5 }
  # validates :floor, numericality: { only_integer: true }
end
