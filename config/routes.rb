Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  resources :portos, except: [:show] do 
    put :sort, on: :collection 
  end

  get'portos/:id', to: 'portos#show', as: 'porto_show'
  
  get '/about-me', to: 'pages#about' 

  get '/contact', to: 'pages#contact'

  get 'news', to: 'pages#news'

  resources :blogs do 
  	member do 
  		get :toggle_status
  	end

  end


  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
