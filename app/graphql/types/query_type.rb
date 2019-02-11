module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # First describe the field signature
    # GraphQL: post(id: ID!)
    # Define a field with pure result (PostType without [] or array)
    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end
    def post(id:)
      Post.find(id)
    end

    # TODO: Pagination
    # Define a field with Array [] result
    field :allPost, [PostType], null: true do
      description "Get all posts"
      argument :page, Integer, required: false
    end
    def all_post(page:nil)
      Post.all
    end
  end
end
