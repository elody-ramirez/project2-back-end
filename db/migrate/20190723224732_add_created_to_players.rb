# frozen_string_literal: true

class AddCreatedToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :created_by, :integer
  end
end
