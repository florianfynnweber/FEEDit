class CreateSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :submissions do |t|
      t.integer :status, null: false, default:0
      t.string :description, null: false, default: ""
      t.integer :feedback_id
      t.integer :task_id, null: false
      t.timestamps
    end
  end
end
