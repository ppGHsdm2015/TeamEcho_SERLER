class CreateSeMethods < ActiveRecord::Migration
  def change
    create_table :se_methods, id: false do |t|
      t.integer 'se_methodID'
      t.string 'se_methodname'
      t.primary_key :se_methodID
    end
  end
end
