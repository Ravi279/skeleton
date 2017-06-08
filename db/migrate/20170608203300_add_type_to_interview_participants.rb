class AddTypeToInterviewParticipants < ActiveRecord::Migration[5.0]
  def change
    remove_column :interviews, :candidate_id
    rename_column :interview_participants, :interviewer_id, :participant_id
    add_column :interview_participants, :participant_type, :string
  end
end
