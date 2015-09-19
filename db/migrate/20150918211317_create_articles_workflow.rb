class CreateArticlesWorkflow < ActiveRecord::Migration
  def change
    create_table :articles_workflows do |t|
      t.integer 'articleID', :null => false			
      t.integer 'workflow_ID', :null => false			
      t.integer 'implementor', :null => false		
      t.datetime 'impl_On', :null => false
    end
  end
end
