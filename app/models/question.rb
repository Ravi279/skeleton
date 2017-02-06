class Question < ApplicationRecord
  has_many :interview_questions
  has_many :interviews, through: :interview_questions
  has_many :answers
  has_many :candidates, through: :answers

end
