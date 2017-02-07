class CreateInterviewQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :interview_questions do |t|
      t.integer :interview_id
      t.integer :question_id
      t.integer :display_order
      t.timestamps
    end
  end
end
