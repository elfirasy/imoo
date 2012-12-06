# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
# Mime::Type.register_alias "text/html", :iphone

Mime::Type.register "image/jpeg", :jpg
Mime::Type.register "image/png", :png
Mime::Type.register "audio/mpeg3", :mp3
Mime::Type.register "audio/ogg", :ogg

# Rack::Mime::MIME_TYPES.merge!({
#   ".ogg"     => "application/ogg",
#   ".ogx"     => "application/ogg",
#   ".json"    => "application/json",
#   ".xml"     => "application/xml",
#   ".ogv"     => "video/ogg",
#   ".oga"     => "audio/ogg",
#   ".mp4"     => "video/mp4",
#   ".m4v"     => "video/mp4",
#   ".mp3"     => "audio/mpeg3",
#   ".m4a"     => "audio/mpeg",
#   ".jpg"		 => "image/jpeg",
#   ".png"		 => "image/png", 
#   ".gif"		 => "image/gif"
# })