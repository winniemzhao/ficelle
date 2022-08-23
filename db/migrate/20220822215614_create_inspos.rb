class CreateInspos < ActiveRecord::Migration[7.0]
  def change
    create_table :inspos do |t|
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
