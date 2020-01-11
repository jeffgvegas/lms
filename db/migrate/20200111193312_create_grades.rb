class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :assignment_id
      t.string :letter
      t.float :score

      t.timestamps
    end
  end
end
