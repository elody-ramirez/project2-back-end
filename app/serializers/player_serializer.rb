# frozen_string_literal: true

class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :position, :height, :team, :created_by
end
