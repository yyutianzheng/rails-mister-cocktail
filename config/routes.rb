Rails.application.routes.draw do
  resources :cocktails, only: [:show, :index, :new, :create, :destroy] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:show]

  root "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
