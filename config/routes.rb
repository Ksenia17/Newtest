Rails.application.routes.draw do
  
  resources :projects, only:[:new,:create,:index,:show,:edit,:update,:destroy] do
    resources :tasks, only:[:new,:create,:index,:show,:edit,:update,:destroy] do
      get  :deadline, on: :member
      post :complete, on: :member
    end
  end
  

  devise_for :users, 
              controllers: {
              sessions: 'users/sessions'
                            }
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
