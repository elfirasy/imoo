class AddFieldAssetToSongs < ActiveRecord::Migration
  def self.up
		add_column :songs, :asset_file_name, :string
		add_column :songs, :asset_content_type, :string
		add_column :songs, :asset_file_size, :integer
		add_column :songs, :asset_updated_at, :datetime
  end

  def self.down
		remove_column :songs, :asset_file_size
		remove_column :songs, :asset_updated_at
		remove_column :songs, :asset_file_name
		remove_column :songs, :asset_content_type
  end
end
