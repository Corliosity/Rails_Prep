class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastName
      t.integer :studentID
      t.string :schoolYear
      t.date :birthday

      t.timestamps
    end
  end
end
