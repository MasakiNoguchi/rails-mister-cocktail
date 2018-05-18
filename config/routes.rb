Rails.application.routes.draw do
  # COCKTAILS
  # root to: 'cocktails#index'
  # get 'cocktails', to: 'cocktails#index', as: 'home'
  # get 'cocktails/new', to: 'cocktails#new'
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'

  # # DOSES
  # get 'cocktails/:cocktail_id/doses/new', to: 'doses#new', as: 'dose'
  # post 'cocktails/:cocktail_id/doses', to: 'doses#create'
  # delete 'doses/:id', to: 'doses#destroy'
  root to: 'cocktails#index'
  resources :doses, only: [:destroy]
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
end
