class AddLinkToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :link, :string
  end
end
