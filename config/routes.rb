Rails.application.routes.draw do
  get 'students/index'
  get 'students/new'
  get 'students/show'
 root to: 'courses#index'
 get 'about', to: 'pages#index'
 get 'courses/new', to: 'courses#new'
 resources :courses
 resources :students
end
