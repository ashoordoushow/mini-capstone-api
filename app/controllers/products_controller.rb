class ProductsController < ApplicationController
    def 
        protect_from_forgery with: :exception, unless: -> { request.format.json? }
    end
    def index
        @products = Product.all
        render template: "products/index"
        

    end
    def one
        @product = Product.find_by(id: 3)
        # p product 
        render template: "products/show" #when typing this you MUST type product(s) plural NOT singular or else it wont run correctly!
        # render template: "products/index"                                 #show is for 1 product & is looking for a variable that is "@product"

        # render json: {message: product.image_url}


    
    end
end

# show
# send an id in params                          #this was a previous logic in 'def' method                      
    # p params[:id]
    # @product = Product.find_by(id: params[:id])
    # use that id to find a recipe
    # render that recipe
    # render template: "products/show"




# all                                          # this was previous logic in 'def' method
#         @products = Product.all
#         render template: "products/index"



# @product = Product.new(                       # previous method in the 'def' method
#       name: "iphone", 
#       price: 20,
#       image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc4D8uA5q38No8cDERNzD9W8T_HhyVD-fFQw&s",
#       description: "pink"
#     )
#     @product.save
#     render template: "products/show"

# render json: {name: @products[0].name} #this was used when '@products = Product.all' to print out the name of the first product in the array