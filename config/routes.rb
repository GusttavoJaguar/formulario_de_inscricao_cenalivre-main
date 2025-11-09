Rails.application.routes.draw do
    # Autenticação do administrador
    
    # Rotas Públicas
    root "pages#inicio"

    get "inicio", to: "pages#inicio"
    get "sobre", to: "pages#sobre"
    get "contatos", to: "pages#contatos"
  
    resources :posts do
      resources :comments
    end # Apenas visualização
    resources :eventos # Apenas visualização
    resources :inscricaos # Apenas visualização
    
    
    
    devise_for :admins
  
    # Área Administrativa (Restrita a Admins)
    namespace :admin do
      root "dashboard#index"  # Painel admin
      resources :posts, only: [:index, :show, :new, :edit, :create, :update, :destroy] # Admin gerencia posts
      resources :eventos, only: [:index, :show, :new, :edit, :create, :update, :destroy] # Admin gerencia eventos
      resources :inscricaos, only: [:index, :show, :new, :edit, :create, :update, :destroy] # Admin gerencia inscrições 
    end
  end
  