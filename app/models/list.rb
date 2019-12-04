class List < ApplicationRecord
  belongs_to :user
  has_many :currencies, through: :currency_lists
  has_many :currency_lists
end