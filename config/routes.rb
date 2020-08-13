Rails.application.routes.draw do
  root to: 'ideas#index'
  resources :ideas, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
