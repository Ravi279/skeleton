class Answer < ApplicationRecord
  belongs_to :candidate
  belongs_to :question
  belongs_to :interview
  has_many :answer_ratings

end
