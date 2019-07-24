# frozen_string_literal: true

class CreatedplayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :position, :height
  has_one :user
end
