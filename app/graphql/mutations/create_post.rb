module Mutations
  class CreatePost < GraphQL::Schema::RelayClassicMutation
    
    # Define return fields
    field :post, Types::PostType, null: true
    # [String] = Array => Srting, String, ...
    field :errors, [String], null: false

    # Arguments will be used from client
    argument :title, String, required: true
    argument :description, String, required: true

    # Mutation type will direct here..
    def resolve(t:, d:nil)
      post = Post.create!(title: t, description: d)
      # { post: post }
      if post.save
        # Successful creation, return the created object with no errors
        Rails.logger.warn("Saved post #{post.id}: #{post.title}")
        { post: post, errors: [] }
      else
        # Failed save, return the errors to the client
        { post: nil, errors: link.errors.full_messages }
      end
    end

  end
end
