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

  def show
    @song = Song.find(params[:id])
    # raise @song.as_json.inspect
    @song_list = Song.all
    respond_to do | format |
      format.html

      # format.json { render :json => @song }
      format.json { render :json => { :id => params[:id] , :song => @song.as_json(:only => [:artist, :title, :album, :genre ] ) } }
      format.xml { render :xml => @song }

      # check the cover image
      if @song.cover.path != nil
        format.png { send_file( @song.cover.path, :type => 'image/png', :disposition => 'attachment') }
        format.jpg { send_file( @song.cover.path, :type => 'image/jpg', :disposition => 'attachment') }
      else
        format.html
      end

      # check the song file
      if @song.asset.path != nil
        format.mp3 { send_file( @song.asset.path, :type => 'audio/mpeg3', :disposition => 'attachment') }
        format.ogg { send_file( @song.asset.path, :type => 'audio/ogg', :disposition => 'attachment') }
      else
        format.html
      end
        
    end
  end

  def edit
    @song = Song.find(params[:id])
    @song_list = Song.all
  end

  def update
    @song = Song.find(params[:id])
    if @song.update_attributes(params[:song])
      flash[:notice] = "Song has been updated"
      redirect_to @song
    else
      flash[:alert] = "Song can not updated"
      render :action => "edit"
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    flash[:notice] = "Song has been deleted"
    redirect_to @song
  end
end
