Rails.application.routes.draw do
  resources :comments

  get 'stories/top', to: 'stories#topStory'  
  resources :stories
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
