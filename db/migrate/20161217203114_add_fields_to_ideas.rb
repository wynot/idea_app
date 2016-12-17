class AddFieldsToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :market_size_millions, :integer
    add_column :ideas, :stage, :float
    add_column :ideas, :notes, :text
  end
end
