class CreateSeMethgy < ActiveRecord::Migration
  def change
    create_table :se_methgies, id: false do |t|
      t.integer 'se_methgyID'
      t.string 'se_methgyname'
      t.string 'se_methgydesc'
      t.primary_key :se_methgyID
    end
  end
end
