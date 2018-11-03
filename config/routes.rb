Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'users', to: 'users#index'
  get 'answers', to: 'answers#index'
  get 'categories', to: 'categories#index'
  get 'questions', to: 'questions#index'
  get 'challenges', to: 'challenges#index'
  get 'scores', to: 'scores#index'
  get 'userQuestions', to: 'user_questions#index'
  get 'userChallenges', to: 'user_challenges#index'
  
  
  post 'category', to: 'categories#create'
  post 'answer', to: 'answers#create'
  post 'question', to: 'questions#create'
  post 'challenge', to: 'challenges#create'
  post 'user', to: 'users#create'
  post 'score', to: 'scores#create'
  post 'userQuestion', to: 'user_questions#create'
  post 'userChallenge', to: 'user_challenges#create'
  
  
  
  resources :users
  resources :scores
  resources :user_questions
  resources :user_challenges
                        
  #resources :users, :except [:index]
  
end
