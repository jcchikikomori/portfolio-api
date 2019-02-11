module Types
  class PostType < Types::BaseObject

    # null arguments are required
    field :id, ID, null: false
    field :title, String, null: true
    field :description, String, null: true

    # https://graphql-ruby.org/api-doc/1.8.13/GraphQL/Types/Boolean
    field :deleted, GraphQL::BOOLEAN_TYPE, null: false

    # TODO: Format Timestamp either from here or from mutations
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :modified_at, GraphQL::Types::ISO8601DateTime, null: false

  end
end
