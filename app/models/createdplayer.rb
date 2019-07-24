# frozen_string_literal: true

class Createdplayer < ApplicationRecord
  belongs_to :user

  validates_associated :user
  validates :user, presence: true
end
