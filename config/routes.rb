Rails.application.routes.draw do
  
  # graphiql
  # if Rails.env.development?
  # disabled condition to test well in production
  # TODO: Will be disabled on next release
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  # end

  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
