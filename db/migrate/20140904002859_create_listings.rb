class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user
      t.datetime :available_from
      t.datetime :available_to   
      t.string :address
      t.timestamps   
    end
  end
end
