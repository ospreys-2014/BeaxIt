class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.belongs_to :artist
      t.belongs_to :album
      t.belongs_to :playlist

      t.timestamps
    end
  end
end
