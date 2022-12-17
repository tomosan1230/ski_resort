Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :member,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :member do
    post 'members/guest_sign_in', to: 'members/sessions#guest_sign_in'
  end

  scope module: :public do
    root to: "homes#top"
    get '/about' => "homes#about"
    resources :resorts, only:[:index, :show] do
      resources :reviews, only:[:index, :new, :edit, :create, :update, :destroy]
    end
    resources :members, only:[:show, :edit, :update] do
      collection do
        get "unsubscribe"
        patch "withdraw"
      end
    end
    get 'searches/search', as: :search
  end

  namespace :admin do
    get '/' => 'homes#top'
    resources :reviews, only:[:index, :show, :destroy]
    resources :members, only:[:index, :show, :edit, :update]
    resources :prefectures, only:[:index, :edit, :create, :update, :destroy]
    resources :resorts, only:[:index, :new, :create, :show, :edit, :update, :destroy]
  end

end