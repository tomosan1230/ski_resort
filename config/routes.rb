Rails.application.routes.draw do

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  devise_for :member,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    root to: "homes#top"
    get '/about' => "homes#about"
    resources :resorts, only:[:index, :show]
    resources :members, only:[:show, :edit] do
      collection do
        get "unsubscribe"
      end
    end
    resources :reviews, only:[:index, :edit, :create, :update, :destroy]
  end

  namespace :admin do
    get '/' => 'homes#top'
    resources :reviews, only:[:index, :show, :destroy]
    resources :members, only:[:index, :show, :edit, :update]
    resources :prefectures, only:[:index, :edit, :create, :update]
    resources :resorts, only:[:index, :new, :show, :edit, :update, :destroy]
  end

end