class CreateArticlesWorkflow < ActiveRecord::Migration
  def change
    create_table :articles_workflows do |t|
      t.integer 'ArticleID', :null => false			
      t.integer 'Workflow_ID', :null => false			
      t.integer 'Implementor', :null => false		
      t.datetime 'Impl_On', :null => false
    end
  end
end
