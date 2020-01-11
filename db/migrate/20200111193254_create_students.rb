class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :grades_id
      t.integer :course_id
      t.string :name

      t.timestamps
    end
  end
end
