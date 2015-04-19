class CreateFootballSpaces < ActiveRecord::Migration
  def change
    create_table :football_spaces do |t|

    t.integer :community_id, default: 0  

    t.string :name, default: ''  
    t.string :address, default: ''  
    t.integer :players, default: 0  
    t.string :soil, default: ''  # cesped, suelo normal
    t.string :type, default: ''  # abierto, cerrado
    t.string :open_hour, default: '' 
    t.string :close_hour, default: '' 
    t.float :latitude, precision: 10, scale: 6, default: 0
    t.float :longitude, precision: 10, scale: 6, default: 0 
    
      t.timestamps
    end
  end
end
