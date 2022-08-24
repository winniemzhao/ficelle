class AddEnumsToEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :confirmed
    remove_column :events, :completed
    add_column :events, :status, :integer, default: 0
  end
end
