class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.column :first_name, :string, :limit => 25
      t.string :last_name, :limit => 50 
      #By default SQL String limit 255 character 
      #Ex:- :limit => 40
      t.string :email, :default => '', :null => false
      t.string :password, :limit => 40

      #Ex:- :default =>''
      # t.string last_name -- short version
      t.timestamps
      # t.datetime :created_at
      # t.datetime :updated_at
    end
  end

  def down
    drop_table :users    
  end
  
end
