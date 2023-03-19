Rails.application.routes.draw do
  get "/restaurant", to: "restaurant#index"
  get "/restaurant/:id", to: "restaurant#show"
  delete "/restaurant/:id", to: "restaurant#destroy"

  get "/pizza", to: "pizza#index"
  
end
