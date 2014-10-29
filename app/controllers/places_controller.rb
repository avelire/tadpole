class PlacesController < ApplicationController
	def index
		@places = Place.all
		@places = Place.paginate :per_page => 5, :page => params[:page],
								 :conditions => ['name like ?', "%#{params[:search]}%"],
								 :order => 'name'
	end

	def new
		@place = Place.new
	end
end
