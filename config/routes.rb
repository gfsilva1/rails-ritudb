Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'estados#index'
  resources :estados, except: [:edit, :update] do
    resources :pontes, only: [:new, :create]

  end
  resources :pontes, only: :destroy

end
