Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  root 'wikis#index'

  resources :wikis, except: [:edit, :update] do
    resources :articles, except:[:index]
  end

  get '/wikis/:id/add_user', to: 'wikis#add_user', as: :add_user


  devise_for :users, controllers: { sessions: "users/sessions" }

  get '/search', to: 'wikis#search'

  get '/searchwiki', to: 'wikis#searchwiki'
end
