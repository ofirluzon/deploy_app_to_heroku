require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web, at: '/admin/sidekiq'

  root 'home#index'
  post 'action_cable_test', to: 'home#action_cable_test'
end
