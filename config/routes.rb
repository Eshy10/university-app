Rails.application.routes.draw do
 root to: 'courses#index'
 get 'about', to: 'pages#index'
 get 'courses/new', to: 'courses#new'
end
