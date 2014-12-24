class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, limit: 45
      t.string :description, limit: 45
      t.integer :status

      t.timestamps
    end
  end
end
