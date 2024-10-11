class OrdersController < ApplicationController
    def index
        @orders = Order.where(user_id: current_user.id)
        render :index
    end

    def create
        product = Product.find_by(id: params[:product_id])
        calculated_subtotal = product.price * params[:quantity].to_i
        @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
        p @carted_products[0].quantity * @carted_products[0].product.price
        p @carted_products[1].quantity * @carted_products[1].product.price
        calculated_subtotal = 0
        @carted_products.each do |cp|
          calculated_subtotal += cp.quantity * cp.product.price
        end
        calculated_tax = calculated_subtotal * 0.09
        calculated_total = calculated_subtotal + calculated_tax
    
        @order = Order.new(
          user_id: current_user.id,
          product_id: params[:product_id],
          quantity: params[:quantity],
          subtotal: calculated_subtotal,
          subtotal: calculated_subtotal.to_s,
          tax: calculated_tax,
          total: calculated_total,
          total: calculated_total,      
        )
        @order.save
        @order.save!
        render :show
      end

    # def create
    #     @carted_product = CartedProduct.where(status: "carted", user_id: current_user.id) 
    #     p @carted_products[0].quantity * @carted_products[0].product.price
    #     p @carted_products[1].quantity * @carted_products[1].product.price
    #     calculated_subtotal = 0
    #     @carted_products.each do |cp|
    #         calculated_subtotal += cp.quantity * cp.product.price
    #     end

    #     calculated_tax = calculated_subtotal * 0.09
    #     calculated_total = calculated_subtotal + calculated_tax

    #     @order = Order.new(
    #         user_id: current_user.id,
    #         subtotal: calculated_subtotal.to_s,
    #         tax: calculated_tax,
    #         total: calculated_total,
    #     )
    #     @order.save!
    #     render :show
    # end

    def show
        @order = Order.find_by(id: params[:id])
        render :show
    end

end


#Good method to find out where the 'end' or syntax errors are is by hashing a chunk of code and running each code piece by piece to make sure each little section is working properly, if not fix them and move to the next chunk of code

# this was for step 6 and there's much more syntax to do check instructors github 
# this is all for the CREATE action
# this is the values of the create action
#i beliveve i removed the quantity column
#make sure you do orde.save!
# 2
# 4
# 4 * 0.09
# 4 + (4 * .09)

# def create
#     #find all the products in users shopping cart
#     @carted_products = CartedProduct.where(status) # unfinished
#     #for one cp
#     #find quantity
#     # find product, prooducts price
#     # multiply them


    