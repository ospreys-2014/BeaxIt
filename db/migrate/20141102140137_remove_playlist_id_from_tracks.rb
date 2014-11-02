class RemovePlaylistIdFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :playlist_id
  end
end
