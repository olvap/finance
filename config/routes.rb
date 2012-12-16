Finance::Application.routes.draw do
  resources :categories

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  resources :users do
    resources :accounts
  end

  resources :transactions

end
