class AddDefaults < ActiveRecord::Migration[7.0]
  def change
    change_column_default :events, :confirmed, false
    change_column_default :events, :completed, false
    change_column_default :events, :location, "Montreal"
  end
end
