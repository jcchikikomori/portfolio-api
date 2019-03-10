Rails.application.routes.draw do
  authenticated :user do
    mount GraphiQL::Rails::Engine, at: "/", graphql_path: "/graphql"
  end
  devise_scope :user do
    root "devise/sessions#new"
  end
  post "/graphql", to: "graphql#execute"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
