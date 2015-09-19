class CreateRschParticipants < ActiveRecord::Migration
  def change
    create_table :rsch_participants, id: false do |t|
      t.integer 'partID'
      t.string 'partname'
      t.primary_key :partID
    end
  end
end
