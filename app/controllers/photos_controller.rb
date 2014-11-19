class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@photo = @place.photos.create(photo_params)
		# raise @photo.errors.to_json
		redirect_to place_path(@place)
	end

	private

	def photo_params
		params.require(:photo).permit(:photo, :picture, :caption)
	end

	def index
		@photo = Photo.all
		@photo = Photo.search(params[:search], params[:page])
	end

	def new
		@photo = Photo.new
	end

	def show
		@photo = Photo.new
	end
end
