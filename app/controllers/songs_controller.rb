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
  end
  def show
    @song = Song.find(params[:id])
  end
end
