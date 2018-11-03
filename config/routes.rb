Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'users', to: 'users#index'
  get 'answers', to: 'answers#index'
  get 'categories', to: 'categories#index'
  get 'questions', to: 'questions#index'
  get 'challenges', to: 'challenges#index'
  
  post 'category', to: 'categories#create'
  post 'answer', to: 'answers#create'
  post 'question', to: 'questions#create'
  post 'challenge', to: 'challenges#create'
  
  
  
  resources :users
  #resources :users, :except [:index]
  
end
