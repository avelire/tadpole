class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	geocoded_by :address
	after_validation :geocode 

	validates :name, :presence => true, length: { minimum: 3 }, :uniqueness => true
	validates :address, :presence => true, length: { minimum: 3, maximum: 200}
	validates :description, :presence => true, length: { minimum: 2, maximum: 500}
end
