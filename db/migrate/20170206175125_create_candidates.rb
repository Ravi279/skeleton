class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.integer :position_id
      t.string :name
      t.string :email
      t.string :phone
      t.timestamps
    end
  end
end
