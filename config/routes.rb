Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions' }
  resources :users, only: %i[index]

  resources :categories, only: %i[index show new create destroy] do
    resources :transactions, only: %i[new create destroy]
  end

  resources :unlocks, only: %i[index]
  root 'unlocks#index'
end
