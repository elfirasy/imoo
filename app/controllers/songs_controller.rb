class SongsController < ApplicationController
	
  def index
  	@song = Song.all
  end

  def new
  	@song = Song.new
  	@song_list = Song.all
  end

  def create
  	@song = Song.new(params[:song])

  	if @song.save
  		flash[:notice] = "New file has been uploaded."
  		redirect_to @song
  	else
  		flash[:notice] = "File can not uploaded."
  		render :action => "new"
  	end
  end


end
