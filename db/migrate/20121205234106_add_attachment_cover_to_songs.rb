class AddAttachmentCoverToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.has_attached_file :cover
    end
  end

  def self.down
    drop_attached_file :songs, :cover
  end
end
