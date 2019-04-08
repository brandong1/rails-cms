class AlterUsers < ActiveRecord::Migration[5.2]
  def up
    rename_table("users", "admin_users")
    add_column("admin_users", "username", :string, :limit => 25, :after => "email") #By default SQL String limit 255 character 
    change_column("admin_users", "email", :string, :limit => 100)
    rename_column("admin_users", "password", "hashed_password")
    puts "*** Adding an Index ***"
    add_index("admin_users", "username")
  end

  # down method reverses everything in the up method
  def down 
    remove_index("admin_users", "username")
    rename_column("admin_users", "hashed_password", "password")
    change_column("admin_users", "email", :string, :default => "", :null => false)
    remove_column("admin_users", "username") #By default SQL String limit 255 character 
    rename_table("admin_users", "users")
  end
end
