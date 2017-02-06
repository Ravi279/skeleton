class Position < ApplicationRecord
  has_many :interviews
  has_many :candidates, through: :interviews
end
