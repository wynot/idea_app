class CreateUserPlaceLists < ActiveRecord::Migration
  def change
    create_table :user_place_lists do |t|

      t.timestamps null: false
    end
  end
end
