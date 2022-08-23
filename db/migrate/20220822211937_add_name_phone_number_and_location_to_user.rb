class AddNamePhoneNumberAndLocationToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :name, :string
    add_column :users, :location, :string
  end
end
