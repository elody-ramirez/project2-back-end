# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This file seeds `book`, `author`, `librarian`, and `member` resources

require 'csv'

Player.transaction do
  CSV.foreach(Rails.root + 'data/players.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |player_row|
    player = player_row.to_hash
    Player.create player unless Player.exists? player
  end
end
