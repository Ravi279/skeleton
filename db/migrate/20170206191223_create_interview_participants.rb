class CreateInterviewParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :interview_participants do |t|
      t.integer :interview_id
      t.integer :interviewer_id
      t.timestamps
    end
  end
end
