class RenameAdminFlgColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :admin_flg, :admin
  end
end
