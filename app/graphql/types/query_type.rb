module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # First describe the field signature
    # GraphQL: post(id: ID!)
    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    def all_post
      Post.all
    end
  end
end
