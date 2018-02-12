require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web, at: '/admin/sidekiq'

  root 'home#index'
end
