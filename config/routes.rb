Rails.application.routes.draw do
  # * Restaurants: index, new, create, show
  # * Ratings: index, new create

  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[index new create]
  end

end
