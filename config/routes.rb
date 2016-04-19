Rails.application.routes.draw do
  resources 'machines'

  resources 'tijds'

  get 'machines/index'
  get 'machines/show'
end