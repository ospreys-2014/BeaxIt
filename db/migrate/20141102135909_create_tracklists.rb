class CreateTracklists < ActiveRecord::Migration
  def change
    create_table :tracklists do |t|
      t.belongs_to :track
      t.belongs_to :playlist
    end
  end
end
