class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.references :user
      t.references :listing
      t.string :title
      t.integer :rating
      t.string :comment
      t.timestamps
    end
  end
end
