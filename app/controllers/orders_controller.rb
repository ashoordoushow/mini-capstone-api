class OrdersController < ApplicationController
    def create
        @order = Order.new(
            user_id: current_user.id, 
            product_id: params[:product_id], 
            quantity: params[:quantity], 
            subtotal: params[:subtotal], 
            tax: params[:tax],
            total: params[:total]
            )
            @order.save
        render template: "orders/show"
    end

    def show
        @order = Order.find_by(id: params[:id])
        render :show
    end

    def index
        @orders = Order.all
        render :index
      end
end


