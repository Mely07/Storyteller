Rails.application.routes.draw do
  resources :comments

  get 'stories/top', to: 'stories#topStory'  
  resources :stories
  
  resources :users

  resources :sessions 

  get 'logged_in', to: 'sessions#logged_in'

  delete 'logout', to: 'sessions#logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#index'
end




