class AddContentToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :content, :text
  end
end
