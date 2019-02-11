module Types
  class PostType < Types::BaseObject
    field :id, ID
    field :title, Types::StringType, null: true
    field :description, Types::StringType, null: true
  end
end
