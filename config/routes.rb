AccepttoSsoClient::Application.routes.draw do
  root :to => 'home#public'
  get 'index' => 'home#index'
  get 'logout' => 'home#logout'
end
