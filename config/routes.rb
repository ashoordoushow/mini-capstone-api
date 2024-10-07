Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products" => "products#index"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"


  post "/orders" => "orders#create"
  post "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
end















# get "/products" => "products#index" #now we're going to use this route to display all products at once
  # get "/products/:id" => "products#show"
  # post "/products" => "products#create"
  # get "/one_product" => "products#one" #this was used to display how we used the 'show' 'jbuilder' file to display 1 product at a time 
  # get "/one_product/:id" => "products#show" # this is a SEGMENT PARAM very useful and important! # '/:' 'purple_hippo' can be anything 
                                          #make sure if you're going to do the 'show' method for singular products always make the 'action:' show, this is the proper way to code.
  
  
  # get "/product", controller: "products", action: "all"
  # get "/products" => "products#all"
  # get "/product" => "products#first_contact"


  # Defines the root path route ("/")

  # Defines the root path route ("/")
  # root "posts#index"