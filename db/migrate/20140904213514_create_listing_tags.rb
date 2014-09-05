class CreateListingsTags < ActiveRecord::Migration
  def change
    create_table :listing_tags do |t|
      t.references :listing
      t.references :tag
    end
  end
end
