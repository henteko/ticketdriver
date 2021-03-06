Ticketdriver::Application.routes.draw do
  resources :projects do
    resources :tickets do
      collection do
        get :show_more
        get :manual
      end
      member do
        post :lift
        post :lower
      end
    end
  end
  resources :comments do
  end
  root :to => "projects#index"
  
end
