Rails3BootstrapDeviseCancan::Application.routes.draw do
  authenticated :user do
    root :to => 'home#show'
  end
  devise_scope :user do
  	root :to => "devise/registrations#new"
  end
  devise_for :users
  resources :users
end