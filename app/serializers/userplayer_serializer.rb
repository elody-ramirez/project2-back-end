# frozen_string_literal: true

class UserplayerSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :player
end
