Rails.application.routes.draw do
  root 'login#index' #Home Page
  get '/about' => 'login#about' #About
  get '/login' => 'login#new' #Login Page
  get '/user/:id' => 'user#show' #User Dashboard 
  post '/login' => 'login#create'#Sending to Login
  post '/user' => 'user#create'  #Sending to Create User
  delete '/login/:id' => 'login#destroy' #Log Out
  get '/cart' => 'login#check' #Only allows logged in members to checkout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
