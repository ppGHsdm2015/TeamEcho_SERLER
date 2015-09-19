class CreateEvidenceItem < ActiveRecord::Migration
  def change
    create_table :evidence_items, id: false do |t|
      t.integer 'ev_type_ID'
      t.string 'ev_type_name'
      t.primary_key :ev_type_ID
    end
  end
end
