class CreateAlbumPreviewColumn < ActiveRecord::Migration
  def change
    add_column :albums, :preview, :string
  end
end
