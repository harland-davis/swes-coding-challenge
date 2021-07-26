class Building < ApplicationRecord
  has_many :offices, dependent: :destroy
  has_many :companies, through: :offices, dependent: :destroy
end
