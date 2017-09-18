class AddCompletedAtToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :completed_at, :datetime
  end
end
