class AddConvictionToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :conviction, :integer
  end
end
