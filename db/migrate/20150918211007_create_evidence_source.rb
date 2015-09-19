class CreateEvidenceSource < ActiveRecord::Migration
  def change
    create_table :evidence_sources, id: false do |t|
      t.integer 'articleID', :null => false	
      t.string 'title',	:limit => '200', :null => false	
      t.string 'author',	:limit => '200', :null => false	
      t.datetime 'year'			
      t.string 'source', :limit => '200'				
      t.datetime 'doi'		
      t.integer 'issueNo'			
      t.string 'volume',	:limit => '200'			
      t.string 'pageNo',	:limit => '200'			
      t.integer 'submitter',	:null => false	
      t.datetime 'submittedOn', :null => false	
      t.primary_key :articleID
    end
  end
end
