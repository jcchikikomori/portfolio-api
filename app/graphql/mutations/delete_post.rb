# frozen_string_literal: true

module Mutations
  # Delete Post by specific ID
  # TODO: Using UUID masks instead of internal IDs
  class DeletePost < GraphQL::Schema::RelayClassicMutation
    # Define return fields
    field :errors, [String], null: false
    field :deleted, Boolean, null: false

    # Arguments will be used from client
    argument :id, ID, required: true, type: Types::Post

    # Mutation type will direct he  re..
    def resolve(id:)
      post = Post.find_by(id: id)
      post.deleted = true
      if post.save
        # Success
        Rails.logger.warn("Deleted post #{post.id}: #{post.title}")
        { post: post, errors: [] }
      else
        # Failed
        { post: nil, errors: link.errors.full_messages }
      end
    end
  end
end
