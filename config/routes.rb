Rails.application.routes.draw do
  resources 'machines'

  get 'machines/index'
  get 'machines/show'

  root "pins#index"
end