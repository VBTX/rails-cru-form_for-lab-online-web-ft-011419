class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def new
    @song = Song.new
  end
  def navigate
  end
  def update
  end
  def create
    @song = Song.new(song_params)
	  @song.save
	  redirect_to song_path(@song)
  end
  def show
    @song = Song.find(params[:id])
  end

  private

		def song_params
			params.require(:song).permit(:name, :artist_id, :genre_id)
		end
end
