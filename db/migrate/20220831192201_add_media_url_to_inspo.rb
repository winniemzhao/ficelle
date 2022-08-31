class AddMediaUrlToInspo < ActiveRecord::Migration[7.0]
  def change
    add_column :inspos, :media, :string
  end
end
