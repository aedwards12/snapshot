class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.references :photographable, polymorphic: true
      t.timestamps
    end
  end
end
