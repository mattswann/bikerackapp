class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :lastname
       t.string :email,              null: false, default: ""
      t.text :bikeinfo

      t.timestamps
    end
  end
end
