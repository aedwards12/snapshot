class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.references :user
      t.references :listing
      t.integer :rating
      t.string :testimonials_text
      t.timestamps
    end
  end
end
