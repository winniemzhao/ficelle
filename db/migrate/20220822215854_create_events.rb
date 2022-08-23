class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :location
      t.boolean :confirmed
      t.boolean :completed
      t.boolean :success
      t.references :partner, null: false, foreign_key: true
      t.references :inspo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
