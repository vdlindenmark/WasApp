Rails.application.routes.draw do
  resources 'machines'

  get 'machines/index'
end