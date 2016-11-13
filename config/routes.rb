Rails.application.routes.draw do
  resources :explores
  resources :questions
  resources :clarifies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
