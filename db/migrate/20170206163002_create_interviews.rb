class CreateInterviews < ActiveRecord::Migration[5.0]
  def change
    create_table :interviews do |t|
      t.timestamp :interview_date
      t.string :description
      t.integer :candidate_id
      t.integer :position_id
      t.timestamps
    end
  end
end
