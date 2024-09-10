class ProductsController < ApplicationController
    def create
        p params[:description]
        @product = Product.new(             #add '@' here       #I can run this in my controller and create new syntax through my controller
            name: params[:name], 
            price: params[:price], 
            image_url: params[:image_url], 
            description: params[:description]
            )
            @product.save  #also must add '@' to this as well
        render template: "products/show"
            #render json: {name: "hjbsd"} #change this to render template now
    end


    def show
        @product = Product.find_by(id: params[:id]) #Or you can write the method like this, which is the STANDARD way of writing it.
        render template: "products/show" #when typing this you MUST type product(s) plural NOT singular or else it wont run correctly!
    end

    def update
        @product = Product.find_by(id: 5)
        @product.name = "towel!!!"
        @product.price = 12
        @product.image_url = "https://cottoncreations.com/content/uploads/2021/02/Huck-1-scaled.jpg"
        @product.description = "white towel"
        render template: "products/show"

        @product.save


        # render json: {name: "ksfbjn"}
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

# @product = Product.find_by(id: 3)
# p params["id"]

# def 
#     protect_from_forgery with: :exception, unless: -> { request.format.json? }
# end

# index
#         @products = Product.all
#         render template: "products/index"
        
# def show       
#     # @product = Product.find_by(id: params["id"]) # i took the 'params["id"]' and included into the 'find_by' method
#     @product = Product.find_by(id: params[:id]) #Or you can write the method like this, which is the STANDARD way of writing it.
#     # p params["id"]
#      #to access ':id' i can in controller i can print out the params 'hash'
#     # p product 
#     render template: "products/show" #when typing this you MUST type product(s) plural NOT singular or else it wont run correctly!
#     # render template: "products/index"                                 #show is for 1 product & is looking for a variable that is "@product"

#     # render json: {message: product.image_url}



# end