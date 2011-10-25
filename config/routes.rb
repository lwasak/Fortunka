Fortunka::Application.routes.draw do#   
  resources :fortunes do
    collection do
      get :randf
    end
  end
    
   root :to => 'fortunes#index'
  
end
 