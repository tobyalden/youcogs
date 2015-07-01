class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.column :title, :string
    end
  end
end
  
