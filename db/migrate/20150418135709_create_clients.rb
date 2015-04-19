class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

    t.integer :house_id, default: 0

    t.string :name, default: ''  
    t.string :lastname, default: ''  
    t.string :password, default: ''
    t.float :latitude, precision: 10, scale: 6, default: 0
    t.float :longitude, precision: 10, scale: 6, default: 0 
    
      t.timestamps
    end
  end
end
