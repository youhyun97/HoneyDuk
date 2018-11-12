Rails.application.routes.draw do
  get 'homes/main1'
  root 'homes#main2'
  devise_for :users
  resources :posts, excep: [:show] do
	  post "/like", to: "likes#like_toggle"
	  resources :comments
  end

  resources :comments
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
