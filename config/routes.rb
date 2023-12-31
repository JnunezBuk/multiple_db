Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'

  resources :users, only: %i[index show create] do
    resources :documents, only: %i[index show create]
  end
end
