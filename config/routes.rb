Rails.application.routes.draw do
  get 'home_page/index'
  root 'home_page#index'
  devise_for :users
  resources :enrollments
  resources :students
  resources :sections
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
