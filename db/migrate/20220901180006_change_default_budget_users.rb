class ChangeDefaultBudgetUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :budget, 300
  end
end
