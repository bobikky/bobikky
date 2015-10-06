Rails.application.routes.draw do

  root 'wiki#index'

  resources :wiki, except: [:edit, :update] do
    resources :articles
  end

  devise_for :users, controllers: { sessions: "users/sessions" }
end
