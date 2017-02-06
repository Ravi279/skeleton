class CreateAnswerRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_ratings do |t|
      t.integer :interviewer_id
      t.integer :answer_id
      t.integer :rating, :default => 0
      t.timestamps
    end
  end
end
