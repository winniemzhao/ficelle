class CreateInspoKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :inspo_keywords do |t|
      t.references :inspo, null: false, foreign_key: true
      t.references :keyword, null: false, foreign_key: true

      t.timestamps
    end
  end
end
