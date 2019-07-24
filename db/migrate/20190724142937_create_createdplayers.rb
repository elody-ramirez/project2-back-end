# frozen_string_literal: true

class CreateCreatedplayers < ActiveRecord::Migration[5.2]
  def change
    create_table :createdplayers do |t|
      t.string :name, null: false
      t.integer :rating, null: false
      t.string :position, null: false
      t.string :height, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
