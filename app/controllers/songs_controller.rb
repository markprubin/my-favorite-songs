class SongsController < ApplicationController

  def index
    songs = Song.all
    render json: songs.as_json
  end

  def show
    songs = Song.find_by(id: params["id"])
    render json: songs.as_json
  end

  def create
    song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year],
    )
    render json: song.as_json
    song.save
  end


end
