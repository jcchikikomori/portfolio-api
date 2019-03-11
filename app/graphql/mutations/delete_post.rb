module Mutations
  class DeletePost < GraphQL::Schema::RelayClassicMutation
    
    field :deleted, Boolean, null: false
    field :errors, [String], null: false

    # Arguments will be used from client
    argument :id, ID, required: true
    argument :description, String, required: true

    # Mutation type will direct here..
    def resolve(id:)
      post = Post.find_by(id: id)
      post.deleted = true
      if post.save
        { deleted: post.deleted, errors: [] }
      else
        # Failed save, return the errors to the client
        { deleted: post.deleted, errors: post.errors.full_messages }
      end
    end

  end
end
