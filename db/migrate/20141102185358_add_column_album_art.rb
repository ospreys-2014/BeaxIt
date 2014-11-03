class AddColumnAlbumArt < ActiveRecord::Migration
  def change
    add_column :albums, :artwork_url, :string
  end
end
