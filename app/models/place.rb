class Place < ActiveRecord::Base
	belongs_to :user
	validates :name, :presence => true, length: { minimum: 3 }
	validates :address, :presence => true, length: { minimum: 3, maximum: 200}
	validates :description, :presence => true, length: { minimum: 2, maximum: 500}
end
