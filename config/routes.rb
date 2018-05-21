Rails.application.routes.draw do
  resources :portos, except: [:show]

  get'portos/:id', to: 'portos#show', as: 'porto_show'
  
  get '/about-me', to: 'pages#about' 

  get '/contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
