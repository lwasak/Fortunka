Fortunka::Application.routes.draw do#   
  devise_for :users
  resources :users, :only => :show
  resources :fortunes do
    resources :comments
    collection do
      get :randf
    end
  end
    
   root :to => 'fortunes#index'
  
end
 