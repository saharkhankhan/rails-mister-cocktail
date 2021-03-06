Rails.application.routes.draw do
  resources :cocktails, only: [:show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end

  root to: 'cocktails#index'
end
