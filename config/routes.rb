Rails.application.routes.draw do
  resources :diaries
  resources :poems
  resources :stories
  devise_for :users
  resources :explores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
