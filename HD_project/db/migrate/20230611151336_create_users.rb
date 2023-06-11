class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
        t.string :name ,null:false
        t.integer :phone_number ,null:false
        t.string :sex ,null:false
      t.date :birth_date ,null:false
      t.timestamps
    end
  end
end
