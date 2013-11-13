class ProductsController < ApplicationController
  skip_before_filter :authorize, only: [:show] 

  def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
  	@product = Product.create(product_params)

  	if @product.save
  		redirect_to @product
  	else
  		render 'new'
  	end
  end

  def show
  	@product = Product.friendly.find(params[:id])
    if @product.category == "women"
      @all = Product.where(:category => "women")
      @products = @all.where.not(id: @product.id).order("created_at DESC").limit(3)
    else 
      @all = Product.where(:category => "men")
      @products = @all.where.not(id: @product.id).order("created_at DESC").limit(3)
    end
    @prodid = "#{@product.id}"
    @pagetype = "product"
    @totalvalue = @product.price
    @title = "#{@product.brand} #{@product.title}"
    @description = "#{@product.brand} #{@product.title} #{@product.description}"
  end

  def edit
  	@product = Product.friendly.find(params[:id])
  end

  def update
  	@product = Product.friendly.find(params[:id])

  	if @product.update_attributes(product_params)
  		redirect_to @product
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@product = Product.friendly.find(params[:id])
  	@product.destroy
  	redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:brand, :title, :price, :description, :link,
    			   :frontpage, :expired, :store, :photo, :category, :slug)
  end

end
