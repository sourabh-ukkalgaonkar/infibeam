Rails.application.routes.draw do
  devise_for :doctors, controllers: { registrations: 'doctors/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :availabilities
  resources :appoinments, only: [:index] do
    member do
      post :accept
      post :reject
    end
  end
end
