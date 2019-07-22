# frozen_string_literal: true

class Player < ApplicationRecord
  has_many :userplayers, dependent: :destroy
  has_many :users, through: :userplayers
end
