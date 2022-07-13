Rails.application.routes.draw do
  # ruta que vera el usuario cuando haga la petición controlador#metodo que responde a la accion "pins#index"
  root "pins#index"
  resources :pins
  devise_for :users
    # do
    # get '/users/sign_out' => 'devise/sessions#destroy'
    # end
end
