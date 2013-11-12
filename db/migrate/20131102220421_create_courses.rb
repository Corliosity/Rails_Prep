class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :courseID
      t.string :name
      t.string :roomNumber
      t.string :prefix
      t.text :description

      t.timestamps
    end
  end
end
