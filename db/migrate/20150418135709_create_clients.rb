class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

    t.integer :house_id, default: 0

    t.string :name, default: ''  
    t.string :lastname, default: ''  
    t.string :password, default: ''  

      t.timestamps
    end
  end
end
