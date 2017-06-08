class Interview < ApplicationRecord
  belongs_to :position
  has_many :interview_questions
  has_many :interview_participants
  has_many :questions, through: :interview_questions
  has_many :interviewers, -> { where(interview_participants: { participant_type: "Interviewer"}) }, through: :interview_participants, source: :interviewer
  has_many :candidates, -> { where(interview_participants: { participant_type: "Candidate"}) }, through: :interview_participants, source: :candidate, :before_add => :limit_number_of_candidates

  def limit_number_of_candidates(added_candidates)
    raise Exception.new('Candidate limit for the interview reached') if candidates.size >= 1
  end

  def candidate
    candidates.first
  end
end
