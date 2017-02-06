class InterviewParticipant < ApplicationRecord
  belongs_to :interview
  belongs_to :interviewer
end
