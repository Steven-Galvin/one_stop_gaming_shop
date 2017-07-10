class OrderItemsController < ApplicationController

  def create
    @order = current_order
    item_check(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  private

  def item_check(item_params)
    product_id = item_params['product_id'].to_i
    quantity = item_params['quantity'].to_i
    if current_order.order_items.exists?(product_id)
      @item = current_order.order_items.find(product_id)
      @item.quantity += quantity
      @item.save
    else
      @item = @order.order_items.new(item_params)
    end
  end

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
