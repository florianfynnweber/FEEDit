class RenameUsersRoleToLevel < ActiveRecord::Migration[6.0]
  def up
    rename_column :users, :role, :level
  end

  def down
    rename_column :users, :level, :role
  end
end
