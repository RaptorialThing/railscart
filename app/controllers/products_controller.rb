class ProductsController < ApplicationController
before_action :authenticate_user!, :except => [:index]
  
  def index
    @products = Product.all
  end


  def show
    @product = Product.find(params[:id])
  end   


  def new
    @product = Product.new
  end 

  
  def create
    @user = User.find(current_user.id)
    @product = @user.products.create(product_params)

    if @product
      redirect_to @product
    else 
      render :new
    end    
  end 


  def edit
    @product = Product.find(params[:id])
  end  


  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end 
  end 

        
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end


  private
  def product_params
    params.require(:product).permit(:title,:description)
  end  
end
