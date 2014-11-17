class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |pic|
    	pic.text :caption
    	pic.integer :place_id
      pic.timestamps
    end
  end
end
