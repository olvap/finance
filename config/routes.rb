Finance::Application.routes.draw do

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  resources :users do
    resources :accounts
    resources :categories
  end

  resources :accounts do
    resources :transactions
    resources :incomes
    resources :expenses
  end

end
