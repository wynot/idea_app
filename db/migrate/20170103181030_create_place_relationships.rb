class CreatePlaceRelationships < ActiveRecord::Migration
  def change
    create_table :place_relationships do |t|
      t.integer :place_id
      t.integer :user_id
      t.datetime :date

      t.timestamps null: false
    end
  end
end
