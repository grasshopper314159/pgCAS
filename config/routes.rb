Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  delete 'sessions/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  root 'dashboards#index'
  resources :users do
    collection do
      post :upload_file
      get :assign_desc
    end
  end

	namespace :admin do
    resources :assignments do
    	member do
	      post :sent_to_users
        get :download_as_excel
      end

    end
    resources :dashboards, only: [:index]
    resources :users, only: [:index, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
