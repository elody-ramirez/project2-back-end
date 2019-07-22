# frozen_string_literal: true

class Userplayer < ApplicationRecord
  belongs_to :user
  belongs_to :player
end
