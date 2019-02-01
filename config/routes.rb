Rails.application.routes.draw do

  resources :notes do
    collection do
      post 'save'
      get 'daily_task'
      put 'update_daily_task'
    end
  end

  resources :daily_tasks do
    collection do
      put 'complete'
    end
  end

  resources :weekly_tasks, :success_notes, :fail_notes, :rules, :goals, :days

  post '/ajax/date' => 'notes#ajax_date'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'daily_tasks#index'
end
