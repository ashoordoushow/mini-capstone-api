Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  
  get "/products" => "products#index" #now we're going to use this route to display all products at once
  # get "/products/:id" => "products#show"
  # post "/products" => "products#create"
  # get "/one_product" => "products#one" #this was used to display how we used the 'show' 'jbuilder' file to display 1 product at a time 
  get "/one_product/:id" => "products#one" # '/:' 'purple_hippo' can be anything 
  
  
  
  # get "/product", controller: "products", action: "all"
  # get "/products" => "products#all"
  # get "/product" => "products#first_contact"


  # Defines the root path route ("/")

  # Defines the root path route ("/")
  # root "posts#index"
end
