class Song < ActiveRecord::Base
	attr_accessible :title, :artist, :album, :genre, :cover, :file, :asset
end
