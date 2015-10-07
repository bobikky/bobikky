Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)

  root 'wikis#index'

  resources :wikis, except: [:edit, :update] do
    resources :articles, except:[:index]
  end

  devise_for :users, controllers: { sessions: "users/sessions" }
end
