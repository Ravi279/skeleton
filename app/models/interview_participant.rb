class InterviewParticipant < ApplicationRecord
  belongs_to :participant, :polymorphic => true
  belongs_to :interview
  belongs_to :interviewer, :class_name => "Interviewer",
             :foreign_key => "participant_id"
  belongs_to :candidate, :class_name => "Candidate",
             :foreign_key => "participant_id"
end
