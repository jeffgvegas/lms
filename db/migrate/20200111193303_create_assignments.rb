class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :course_id
      t.integer :grades_id
      t.integer :student_id
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
