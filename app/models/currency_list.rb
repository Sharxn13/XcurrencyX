class CurrencyList < ApplicationRecord
  belongs_to :currency
  belongs_to :list
end