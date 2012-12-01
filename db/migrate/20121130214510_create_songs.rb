class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
    	t.string :title
    	t.string :artist
    	t.string :album
    	t.string :genre
    	t.string :cover
    	t.string :file
      t.timestamps
    end
  end
end
