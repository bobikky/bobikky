Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  root 'wikis#index'
   # get '*path' => 'wiki#index'
  resources :wikis, except: [:edit, :update] do
    resources :articles
  end

  devise_for :users, controllers: { sessions: "users/sessions" }
end
