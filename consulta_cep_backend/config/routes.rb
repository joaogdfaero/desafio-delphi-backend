Rails.application.routes.draw do
  resources :ceps, only: [:index, :show], param: :cep
end
