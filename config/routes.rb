Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'users', to: 'users#index'
  get 'answers', to: 'answers#index'
  get 'categories', to: 'categories#index'
  get 'questions', to: 'questions#index'
  get 'challenges', to: 'challenges#index'
  get 'scores', to: 'scores#index'
  get 'userQuestions', to: 'user_questions#index'
  get 'solutions', to: 'solutions#index'
  
  get 'user/:id', to: 'users#show'
  get 'answer/:id', to: 'answers#show'
  get 'category/:id', to: 'categories#show'  
  get 'question/:id', to: 'questions#show'
  get 'challenge/:id', to: 'challanges#show'
  get 'score/:id', to: 'scores#show'    
  get 'solution/:id', to: 'solutions#show'  
  
  post 'category', to: 'categories#create'
  post 'answer', to: 'answers#create'
  post 'question', to: 'questions#create'
  post 'challenge', to: 'challenges#create'
  post 'user', to: 'users#create'
  post 'score', to: 'scores#create'
  post 'userQuestion', to: 'user_questions#create'
  post 'solutions', to: 'solutions#create'
  
  delete 'category/:id', to: 'categories#destroy'
  delete 'answer/:id', to: 'answers#destroy'
  delete 'question/:id', to: 'questions#destroy'
  delete 'challenege/:id', to: 'challenges#destroy'
  delete 'user/:id', to: 'users#destroy'
  delete 'score/:id', to: 'scores#destroy'
  delete 'solution/:id', to: 'solutions#destroy'
  
  put 'category/:id', to: 'categories#update'
  put 'answer/:id', to: 'answers#update'
  put 'question/:id', to: 'questions#update'
  put 'challenege/:id', to: 'challenges#update'
  put 'user/:id', to: 'users#update'
  put 'score/:id', to: 'scores#update'
  put 'solution/:id', to: 'solutions#update'
  
  resources :users
  resources :scores
  resources :user_questions
  resources :user_challenges
                        
  #resources :users, :except [:index]
  
end
