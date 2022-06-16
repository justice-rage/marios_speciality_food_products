class ProductsController < ApplicationController
  
  def home
    case
    when params[:sort] == "most_recent"
      @products = Product.most_recent
    when params[:sort] == "most_reviewed"
      @products = Product.most_reviewed
    when params[:sort] == "usa_product"
      @products = Product.usa_product
    else
      @products = Product.all
    end
    render :home
  end
  
  def index
    @products = Product.all
    render :index
  end
  
  def new
    @product = Product.new
    render :new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
        else
          flash[:alert] = "Error detected - product not added. Please try again."
          render :new
        end
    end
  
    def edit
        @product = Product.find(params[:id])
        render :edit
    end
  
    def show
        @product = Product.find(params[:id])
        render :show
    end
  
    def update
        @product= Product.find(params[:id])
        if @product.update(product_params)
          flash[:notice] = "Product successfully updated!"
          redirect_to products_path
        else
          flash[:alert] = "Error detected - product not updated. Please try again."
          render :edit
        end
    end
  
    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end


    private
    def product_params
      params.require(:product).permit(:name, :cost, :country_of_origin)
    end
  
  end