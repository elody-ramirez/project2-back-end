  # frozen_string_literal: true

class User < ApplicationRecord
  include Authentication

  has_many :createdplayers
  has_many :userplayers, dependent: :destroy
  has_many :players, through: :userplayers

  validates :userplayers, length: { maximum: 3 }
  validates :createdplayers, length: { maximum: 1 }
end
