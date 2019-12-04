class Currency < ApplicationRecord

has_many :currency_lists
has_many :lists, through: :currency_lists

end