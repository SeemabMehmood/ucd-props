Rails.application.routes.draw do

  get 'property_management', to: "home#property_management"
  get 'contact_us', to: "home#contact_us"
  get 'about_us', to: "home#about_us"
  get 'sell', to: "home#sell"

  post 'send_email_request', to: 'home#send_email_request'

  root 'home#index'
end
