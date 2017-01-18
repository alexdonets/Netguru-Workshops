Rails.application.routes.draw do

  devise_for :users

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  resources :payments

  get 'reports/subjects', to: 'reports#subjects', as: :report_subjects

  get :visitors, to: 'visitors#index'
  root 'visitors#index'

end
