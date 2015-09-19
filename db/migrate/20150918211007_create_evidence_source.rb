class CreateEvidenceSource < ActiveRecord::Migration
  def change
    create_table :evidence_sources, id: false do |t|
      t.integer 'ArticleID', :null => false	
      t.string 'Title',	:limit => '200', :null => false	
      t.string 'Author',	:limit => '200', :null => false	
      t.datetime 'Year'			
      t.string 'Source', :limit => '200'				
      t.datetime 'DOI'		
      t.integer 'Issue_no'			
      t.string 'Volume',	:limit => '200'			
      t.string 'Page_no',	:limit => '200'			
      t.integer 'Submitter',	:null => false	
      t.datetime 'Submitted_on', :null => false	
      t.primary_key :ArticleID
    end
  end
end
