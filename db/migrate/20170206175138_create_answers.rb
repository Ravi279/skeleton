class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :interview_id
      t.integer :candidate_id
      t.integer :question_id
      t.text :response
      t.timestamps
    end
  end
end
