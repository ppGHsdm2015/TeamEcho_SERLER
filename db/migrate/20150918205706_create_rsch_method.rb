class CreateRschMethod < ActiveRecord::Migration
  def change
    create_table :rsch_methods, id: false do |t|
      t.integer 'methodID', :null => false
      t.string 'methodname', :limit => '200'
      t.primary_key :methodID
    end
  end
end
