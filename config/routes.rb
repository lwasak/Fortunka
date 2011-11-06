Fortunka::Application.routes.draw do#   
  resources :fortunes do
    resources :comments
    collection do
      get :randf
    end
  end
    
   root :to => 'fortunes#index'
  
end
 