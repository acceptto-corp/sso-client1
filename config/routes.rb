AccepttoSsoClient::Application.routes.draw do
  root :to => 'home#index'
  get 'index' => 'home#index'
  get 'logout' => 'home#logout'
  get 'login' => 'home#login'
end
