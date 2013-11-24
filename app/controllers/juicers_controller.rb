class JuicersController < ApplicationController
  skip_before_filter :authorize, only: [:show] 

  def index
  	@juicers = Juicer.all
  end

  def new
  	@juicer = Juicer.new
  end

  def create
  	@juicer = Juicer.create(juicer_params)

  	if @juicer.save
  		redirect_to @juicer
  	else
  		render 'new'
  	end
  end

  def show
  	@juicer = Juicer.friendly.find(params[:id])
    @all = Juicer.where(:brand => @juicer.brand)
    @juicers = @all.where.not(id: @juicer.id).order("created_at DESC").limit(3)
    @prodid = "#{@juicer.id}"
    @pagetype = "juicer"
    @totalvalue = @juicer.price
    @title = "#{@juicer.brand} #{@juicer.title}"
    @description = "#{@juicer.brand} #{@juicer.title} #{@juicer.description}"
  end

  def edit
  	@juicer = Juicer.friendly.find(params[:id])
  end

  def update
  	@juicer = Juicer.friendly.find(params[:id])

  	if @juicer.update_attributes(juicer_params)
  		redirect_to @juicer
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@juicer = Juicer.friendly.find(params[:id])
  	@juicer.destroy
  	redirect_to root_path
  end

  private

  def juicer_params
    params.require(:juicer).permit(:brand, :title, :price, :description, :link,
    			   :frontpage, :expired, :store, :photo, :category, :slug)
  end

end
