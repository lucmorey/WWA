Rails.application.routes.draw do
root 'welcome#index'

resources :users

resources :callouts
resources :sessions, only: [:new, :create]

delete '/logout' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
