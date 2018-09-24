Rails.application.routes.draw do

  get 'contact_us', to: "home#contact_us"
  get 'about_us', to: "home#about_us"
  get 'sell', to: "home#sell"

  root 'home#index'
end
