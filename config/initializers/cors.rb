# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'mini-capstone.peterxjang.com', 'localhost:5173'                   #this line is saying anyone can use and access this web browser through google chrome(you can adjust this)
      resource '*', headers: :any, methods: [:get, :post, :patch, :put]
    end
  end