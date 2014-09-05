class CreateTagables < ActiveRecord::Migration
  def change
    create_table :tagables do |t|
      t.references :listing
      t.references :tag
    end
  end
end
