require 'songs_helper'

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
    @song_list = Song.all

    respond_to do | format |
      format.html # show.html.erb
      format.json { render :json => @song }
      format.xml { render :xml => @song, :content_type => 'application/rss', :layout => false }
      format.png { render :file => @song.cover.url, :content_type => 'image/png'}
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
