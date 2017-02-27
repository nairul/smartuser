Rails.application.routes.draw do

get    '/about'           => 'apps#about'
get    '/news'           => 'apps#news'
get    '/contact'           => 'apps#contact'


  root to: "apps#index"
  resources :apps do
    resources :accounts
  end
  devise_for :users
end