Rails.application.routes.draw do
  resources :profiles
  devise_for :users
  resources :loaners, only: [:index, :new, :show, :create]
  resources :steps_after_registration 
  root 'loaners#index'
  get 'declaration', to: "profiles#download_pdf"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
