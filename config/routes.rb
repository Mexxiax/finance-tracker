Rails.application.routes.draw do
  devise_for :users
  root 'finances#index'
end
