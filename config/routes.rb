Rails.application.routes.draw do
   get 'login' => 'sessions#new'
   post 'login' =>'sessions#create'
   delete 'logout' =>'sessions#destroy'
  resources :users
  resources :posts
  #get'posts/:id',:to =>'posts#show',:as =>'show_post'
  #post'posts/:id',:to =>'posts#show'
  
 # resources :posts do
     #collection do
   #  get 'recent', :on => :collection
     #end
   #end
#,:except =>:show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
