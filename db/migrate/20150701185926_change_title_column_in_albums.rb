class ChangeTitleColumnInAlbums < ActiveRecord::Migration
  def change
    rename_column :albums, :title, :properties
  end
end
