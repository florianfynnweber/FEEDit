class AddTableSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.string "key"
      t.string "value"
      t.timestamps
      t.integer "changed_by"
    end
  end
end
