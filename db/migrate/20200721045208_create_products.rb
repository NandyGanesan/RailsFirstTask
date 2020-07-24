class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :productname
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
