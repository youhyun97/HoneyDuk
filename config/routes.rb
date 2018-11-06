Rails.application.routes.draw do
  devise_for :users
  resources :posts, excep: [:show] do
	  post "/like", to: "likes#like_toggle"
  end
  root "posts#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
