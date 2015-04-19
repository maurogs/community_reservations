class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    
    t.integer :community_id, default: 0  

    t.string :address, default: ''  
    t.string :members, default: ''  
    t.float :latitude, precision: 10, scale: 6, default: 0
    t.float :longitude, precision: 10, scale: 6, default: 0 

      t.timestamps
    end
  end
end
