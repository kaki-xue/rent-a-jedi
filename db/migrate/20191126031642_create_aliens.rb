class CreateAliens < ActiveRecord::Migration[5.2]
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :image
      t.string :skill
      t.integer :price_per_day
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
