Rails.application.routes.draw do
  resources :daily_tasks do
    collection do
      put 'complete'
    end
  end
  resources :weekly_tasks
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'weekly_tasks#index'
end
