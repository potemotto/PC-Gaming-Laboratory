Rails.application.routes.draw do
  get 'admin/operating_systems'
  get 'admin/index'
  get 'admin/edit'
  get 'operating_systems/index'
  get 'operating_systems/edit'
  devise_for :admins, skip: [:registrations, :passwords],  controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    root to: "homes#top"
    resources :aricles, except: [:destroy]
    resources :cpu_lists, except: [:destroy]
    resources :gpu_lists, except: [:destroy]
    resources :game_titles, except: [:destroy]
    resources :genres, only: [:index,:create,:edit,:update]
    resources :types, only: [:index,:create,:edit,:update]
    resources :customers, only: [:index,:show,:edit,:update]
    resources :pc_preset
    resources :systems, except: [:destroy]

  end

  devise_for :publics,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    root to: "homes#top"
    resources :aricles, except: [:destroy]
    resources :computers
    resources :powers, only: [:index]
    resources :cpu_lists, only: [:index]
    resources :gpu_lists, only: [:index]
    resources :game_titles, only: [:index]
    resources :customers, only: [:edit,:update]
    get "customers/my_page" => "customers#show"
    get "about" => "homes#about"
    get "how_to_use" => "homes#explanation"
    get "game_title/:id/comparison" => "game_titles#comparison"

  end
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
