Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")ßßß
  root "articles#index"
  get "/articles", to: "articles#index"
  get "/articles/:id", to "articles#show"
end
