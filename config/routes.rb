Rails.application.routes.draw do

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
  end

  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  resources :attendances
  resources :events
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
 root "events#index"
end
