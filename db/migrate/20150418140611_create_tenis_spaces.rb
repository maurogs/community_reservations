class CreateTenisSpaces < ActiveRecord::Migration
  def change
    create_table :tenis_spaces do |t|
    
    t.integer :community_id, default: 0  

    t.string :name, default: ''  
    t.string :address, default: ''  
    t.integer :players, default: 0  
    t.string :soil, default: ''  # tierra batida, piedra, hierba
    t.string :type, default: ''  # dobles, single
    t.string :open_hour, default: '' 
    t.string :close_hour, default: '' 

      t.timestamps
    end
  end
end
