class CreateWorkflow < ActiveRecord::Migration
  def change
    create_table :workflows, id: false do |t|
      t.integer 'workflowID'
      t.string 'workflowname'
      t.primary_key :workflowID
    end
  end
end
