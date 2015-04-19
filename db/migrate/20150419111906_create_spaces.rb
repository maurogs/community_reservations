class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|

    t.integer :community_id, default: 0  

    t.string :name, default: ''  
    t.text :description, default: ''  
    t.string :type, default: ''    

      t.timestamps
    end
  end
end
