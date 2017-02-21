Rails.application.routes.draw do
  get    '/apps'           => 'apps#index'
  get    '/apps/new'       => 'apps#new'
  get    '/apps/:id'       => 'apps#show'
  post   '/apps'           => 'apps#create'
  get    '/apps/:id/edit'  => 'apps#edit'
  put    '/apps/:id'       => 'apps#update'
  delete '/apps/:id'       => 'apps#destroy'
end
