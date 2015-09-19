class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false do |t|
      t.integer 'UserID',	:null => false
      t.string 'Username',	:limit => '25',	:null => false
      t.string 'Password',	:limit => '15', :null => false
      t.string 'fullname',	:limit => '150', :null => false
      t.string 'email',	:limit => '150'	
      t.string 'Affiliation',	:limit => '200'	
      t.integer 'roleID'
      t.string 'gender',  :limit => '1'
      t.integer 'age'
      t.primary_key :UserID
    end
  end
end
