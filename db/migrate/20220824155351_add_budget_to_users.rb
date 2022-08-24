class AddBudgetToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :budget, :float, default: 50
    add_column :users, :event_frequency, :integer, default: 5
  end
end
