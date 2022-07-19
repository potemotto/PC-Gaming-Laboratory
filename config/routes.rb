Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions: "admin/sessions"
  }
  
  namespace :admin do
    root to: "homes#top"
    resources :aricles, except: [:destroy]
    resources :cpu_lists, only: [:index,:show,:edit,:update]
    resources :gpu_lists, only: [:index,:show,:edit,:update]
    resources :game_titles, except: [:destroy]
    resources :genres, only: [:new,:create,:index,:edit,:update]
    resources :customers, only: [:index,:show,:edit,:update]
    resources :pc_preset
    
  end
  
  devise_for :publics,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  
  scope module: :public do
    root to: "homes#top"
    resources :aricles, except: [:destroy]
    resources :my_computers, except: [:new]
    resources :powers, only: [:index]
    resources :cpu_lists, only: [:index]
    resources :gpu_lists, only: [:index]
    resources :game_titles, only: [:index]
    resources :customers, only: [:edit,:update]
    get "customers/my_page" => "customers#show"
    get "about" => "homes#about"
  
  
  end
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
