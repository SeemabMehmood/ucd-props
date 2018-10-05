Rails.application.routes.draw do
  namespace :admin do
    resources :properties

    root 'properties#dashboard'
  end

  get 'property_management', to: "home#property_management"
  get 'contact_us', to: "home#contact_us"
  get 'about_us', to: "home#about_us"
  get 'sell', to: "home#sell"

  post 'send_sell_request', to: 'home#send_sell_request'
  post 'send_property_request', to: 'home#send_property_request'
  post 'send_contact_request', to: 'home#send_contact_request'

  root 'home#index'
end
