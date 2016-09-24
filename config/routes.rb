Rails.application.routes.draw do
  resources :depositos do
    resources :produtos
  end
  
  resources :compras do
     resources :items
   end
   
  resources :items
  
  resources :produtos
  
  resources :clientes do
    resources :compras
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
