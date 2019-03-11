module Types
  class MutationType < Types::BaseObject
    field :createPost, mutation: Mutations::CreatePost
    field :deletePost, mutation: Mutations::DeletePost
  end
end
