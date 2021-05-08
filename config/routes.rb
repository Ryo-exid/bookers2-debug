Rails.application.routes.draw do
  get 'chat/show'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  root 'homes#top'
  get 'home/about' => 'homes#about'

  get 'relationships/create'
  get 'relationships/destroy'

  get 'search' => 'search#search'

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:show,:index,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get :followers, on: :member # 追加
    get :followed, on: :member # 追加
  end

end