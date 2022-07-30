Rails.application.routes.draw do
  get 'comment/create'
  get 'comment/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  get 'about' => 'homes#about'
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy ] do
    resource :likes, only: [:create, :destroy ]
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update ] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

  resources :posts, only: [:index, :create, :update, :edit, :destroy]
  resources :type, only: [:index, :create, :edit, :update, :destroy]
  resources :liqueures, only: [:index, :create, :edit, :update, :destroy]

end
