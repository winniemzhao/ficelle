class RemoveLocationFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :location
  end
end
