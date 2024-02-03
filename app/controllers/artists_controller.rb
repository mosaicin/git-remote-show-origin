# app/controllers/artists_controller.rb
class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def show
    @photo = @artist.build_photo
    @comment = @artist.comments.build
  end

  def create_photo
    @artist = Artist.find(params[:id])
    @photo = @artist.build_photo(photo_params)
    if @photo.save
      redirect_to artist_path(@artist), notice: 'Photo was successfully added.'
    else
      render :show
    end
  end

  def create_comment
    @artist = Artist.find(params[:id])
    @comment = @artist.comments.build(comment_params)
    if @comment.save
      redirect_to artist_path(@artist), notice: 'Comment was successfully added.'
    else
      render :show
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image)
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
