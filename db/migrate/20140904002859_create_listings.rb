class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user
      t.date :available_from
      t.date :available_to   
      t.string :address
      t.timestamps   
    end
  end
end
