class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :band
      t.string :mode
      t.string :callsign
      t.string :classification
      t.string :section

      t.timestamps
    end
  end
end
