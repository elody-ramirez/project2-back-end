class CreateCreatedplayers < ActiveRecord::Migration[5.2]
  def change
    create_table :createdplayers do |t|
      t.string :name
      t.integer :rating
      t.string :position
      t.string :height
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
