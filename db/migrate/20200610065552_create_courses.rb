class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.integer :school_id, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end