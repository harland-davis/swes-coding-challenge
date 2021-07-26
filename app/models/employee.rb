class Employee < ApplicationRecord
  belongs_to :company, dependent: :destroy
end
