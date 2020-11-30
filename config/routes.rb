Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :users do
    member do
      get 'mypage'
    end
  end

  resources :rooms do
    member do
      get 'info'
      get 'facility'
      get 'image_post'
    end
    resources :room_images, only: [:create, :destroy]
  end

  
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
