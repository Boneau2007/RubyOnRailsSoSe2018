class AddRoleAndUsername < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, :default => '', :null => false, :unique => true
    add_column :users, :role, :string, :default => 'user', :null => false
  end
end
