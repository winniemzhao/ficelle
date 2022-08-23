class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.date :birthday
      t.string :phone_number
      t.string :email
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
