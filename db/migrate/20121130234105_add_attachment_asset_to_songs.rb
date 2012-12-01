class AddAttachmentAssetToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.has_attached_file :asset
    end
  end

  def self.down
    drop_attached_file :songs, :asset
  end
end
