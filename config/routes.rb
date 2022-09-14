Rails.application.routes.draw do
  resources :messages
  devise_for :users

  resources :contents do
    get 'search', on: :collection # Esta seria la ruta pots/search -> pots# search
    # Nueva ruta para el controlador comments
    resources :comments, only: [:create] do
    resources :votes, only: [:create] # se utiliza la ruta anidada para el tema de los votos
    end
  resources :votes, only: [:create]
  end

  root "main#welcome"
  resources :pins

  resources :profiles, only: [:show, :edit, :update]

end
