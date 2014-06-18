ComedySeedApp::Application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations' }

    resources :home, only: [:index]

    resources :users, :ratings

    resources :comedians do
       collection do
         get 'newest'
         get 'top'
      end
    end

    resources :reviews do
      member do
        get 'inappropriate'
        delete 'delete_inappropriate', as: :delete_inappropriate
      end
    end

  root :to => 'home#index'

  
end
