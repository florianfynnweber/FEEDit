class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :titel, null: false
      t.integer :status, null: false, default: 0
      t.datetime :submit_till
      t.string :description, null: false, default: ""
      t.boolean :viewable, null: false, default: false
      t.integer :course_id, null: false
      t.timestamps
    end
  end
end
