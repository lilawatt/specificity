Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  get 'signup' => 'users#new'
  get 'welcome/index'
  resources :articles do
    resources :comments
  end
root 'welcome#index'

end
