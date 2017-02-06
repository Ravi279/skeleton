class CreateIntervieweeAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :interviewee_answers do |t|
      t.text :text
      t.integer :interview_id
      t.integer :question_id
      t.integer :interviewee_id
      t.timestamps
    end
  end
end
