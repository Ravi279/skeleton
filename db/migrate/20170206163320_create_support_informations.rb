class CreateSupportInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :support_informations do |t|
      t.string :type
      t.text :data
      t.integer :question_id
      t.timestamps
    end
  end
end
