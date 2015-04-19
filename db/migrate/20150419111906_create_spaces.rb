class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|

    t.integer :community_id, default: 1  

    t.string :name, default: ''  
    t.text :description, default: ''  
    t.string :type_space, default: ''    
    t.string :open_hour, default: '' 
    t.string :close_hour, default: '' 

      t.timestamps
    end
  end
end
