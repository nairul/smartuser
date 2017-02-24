Rails.application.routes.draw do
  root to: 'landings#home'
  get    '/about'		   => 'landings#about' 

 resources :accounts, except: [:new, :create]
  resources :apps do
    resources :accounts, only: [:new, :create]
	end
end
