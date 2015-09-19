class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles, id: false do |t|
      t.integer 'roleID', :null => false
      t.string 'rolename' 
      t.string 'edit_user', :limit => '1', :default => 'n'
      t.string 'modify_masters', :limit => '1', :default => 'n'
      t.string 'allow_mod', :limit => '1', :default => 'n'
      t.string 'allow_analysis', :limit => '1', :default => 'n'
      t.string 'allow_scrh', :limit => '1', :default => 'n'
      t.primary_key :roleID
    end
  end
end
