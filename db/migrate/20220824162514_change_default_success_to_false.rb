class ChangeDefaultSuccessToFalse < ActiveRecord::Migration[7.0]
  def change
    change_column_default :events, :success, false
  end
end
