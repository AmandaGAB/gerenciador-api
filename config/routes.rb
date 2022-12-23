Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #get '/clientes', to: 'clientes#index'
  resources :clientes do
    resources :manutencoes
  end
  resources :funcionarios do 
    resources :manutencoes
  end
  resources :manutencoes do
    resources :clientes
    resources :funcionarios
  end
  resources :equipamentos do
    resources :clientes
    resources :manutencoes
  end
end
