Rails.application.routes.draw do
  get "/restaurant", to: "restaurant#index"
  get "/restaurant/:id", to: "restaurant#show"
  delete "/restaurant/:id", to: "restaurant#destroy"

  get "/pizza", to: "pizza#index"
  post "/restaurant_pizza", to: "restaurant_pizza#create"
  get "/restaurant_pizza", to: "restaurant_pizza#show"
  get "/restaurant_pizza/:id", to: "restaurant_pizza#index"

end
