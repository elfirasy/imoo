class Song < ActiveRecord::Base
	attr_accessible :title, :artist, :album, :genre, :cover, :file,
						:assets_attributes, :asset, :cover, :cover_attributes
  has_attached_file :asset,
            :path => ":rails_root/public/system/asset/music/:id/:filename",
            :url => "/system/asset/music/:id/:filename"
  has_attached_file :cover,
  					:style => { :large => "640x480", :medium => "300x300", :thumb => "100x100"} ,
            :path => ":rails_root/public/system/asset/cover/:id/:filename",
            :url => "/system/asset/cover/:id/:filename"
end
