class AddLocationToInspos < ActiveRecord::Migration[7.0]
  def change
    add_column :inspos, :location, :string
    add_column :inspos, :content, :text
    add_column :inspos, :cost, :float
  end
end
