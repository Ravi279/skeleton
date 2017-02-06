class CreateInterviewees < ActiveRecord::Migration[5.0]
  def change
    create_table :interviewees do |t|
      t.integer :interview_id
      t.string :name
      t.string :email
      t.string :resume_filename
      t.timestamps
    end
  end
end
