Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: "users/registrations",
                                      sessions: "users/sessions" }

 

  resources :profiles do 
       resources :posts

   end
   root 'posts#index'
end
