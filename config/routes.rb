Rails.application.routes.draw do

  resources :business_sales
  resources :customers do 
    collection do
      get :add_item
      post :add
      get :load_customer_data
    end
  end

  resources :customer_items do
   collection do
    post :create
    get :index
   end
   member do
    delete :destroy
  end
  end
  
  resources :items do
    collection do
      get :load_item_data
    end
  end
  resources :parties
  resources :charted_accountants
   devise_for :users, controllers: { registrations: 'registrations' }
   as :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
   end
  root 'home#dashboard'
  # get 'dashboard/index'

  # defaults to dashboard
  # root :to => redirect('/dashboard')
  resources :users do
    collection do
      get :index
    end
  end
  
  resources :home do
    collection do 
    get :dashboard
    end
  end

  resources :general_settings
  # view routes
  # get '/dashboard' => 'dashboard#index'

 
end
