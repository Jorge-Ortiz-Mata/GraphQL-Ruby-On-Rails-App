# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String
    field :age, Integer
    field :location, String
    field :posts, [Types::PostType], null: true
    field :postsTotal, Integer, null: false

    def postsTotal
      object.posts.count
    end

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end

end
