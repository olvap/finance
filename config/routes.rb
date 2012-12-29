Finance::Application.routes.draw do

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  resources :users do
    resources :categories
    resources :transactions, :except => [ :new, :create ]
    resources :incomes, :only => [:index, :new, :create ]
    resources :expenses, :only => [:index, :new, :create ]
  end

end
