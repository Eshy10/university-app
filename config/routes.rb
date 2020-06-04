Rails.application.routes.draw do
  get 'students/index'
  get 'students/new'
  get 'students/show'
 root to: 'courses#index'
 get 'about', to: 'pages#index'
 get 'courses/new', to: 'courses#new'
 get 'login', to: 'logins#new'
 post 'login', to: 'logins#create'
 delete 'logout', to: 'logins#destroy'
 resources :courses
 resources :students
end
