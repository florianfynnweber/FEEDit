class CreateFeedbacks < ActiveRecord::Migration[6.0]
  def change
    create_table :feedbacks do |t|
      t.string :titel, null: false
      t.string :description, null: false
      t.float :note, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
