class CartedProductsController < ApplicationController
#   def create
#     def index
#       @carted_products = CartedProduct.all
#       render :index
#     end
#     def create
#       @carted_products = CartedProduct.create(
#         product_id: params[:product_id],
#         user_id: 1,
#         quantity: params[:quantity],
#         status: "carted",
#       )
#       render :show
#     end
#   end
#   end
# end

# all this below instructor demo'd

# def create            #step 4 + built out jbuilder file
#   @carted_products = CartedProduct.new(
#     user_id:: 2, #this should be current_user.id #when you switch it to this now you have to make sure you are logged in httpie (pick a user login, then on seperate httpie tab 'authorization', then Bearer and 'jwt' link)
#     product_id: 8, # switch the foreign keys to -> params[:product_id]
#     quantity: 2, 
#     order_id: "carted",
#     status:

#   )
#   @carted_products.save
#   render: show
# end
# end

def index
  @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
  render :index
end

def create
  @carted_product = CartedProduct.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    status: "carted",
  )
  @carted_product.save!
  render :show
end

def update
  def update
    @carted_product = CartedProduct.find_by(id: params[:id]) 
    # @carted_product = CartedProduct.find_by(id: 5) #change this to ^ to change a whole existing carted_product to the attributes below
    @carted_product.name = params[:name] || @carted_product.name  # NEED to change the attributes in this update syntax I copied this from the 'products controller'
    @carted_product.price = params[:price] || @carted_product.price
    @carted_product.image_url = params[:image_url] || @carted_product.image_url
    @carted_product.description = params[:description] || @carted_product.description
    render template: "products/show"

    @carted_product.save


    # rend
end

end

