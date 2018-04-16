class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
    
  end

  def help
  end

  def about
  end
  
  def category
    catName = params[:title]
    
    @items = Item.where("category like ?", catName)
    
  # the sql for this would look like  SELECT * FROM items WHERE category LIKE catName
  end
  
  def paid
    flash[:notice] = 'Transaction Complete'
    
    @order = Order.last
    
    @order.update_attribute(:status, "Paid by User: #{current_user.email} ")
    
    session[:cart] = nil
    
  end
  
  
end
