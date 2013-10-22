class AdminsController < ApplicationController
  

  def index
  	@admins = Admin.all
  end

  def new
  	@admin = Admin.new
  end

  def create
  	@admin = Admin.create(admin_params)

  	if @admin.save 
  		redirect_to @admin
  	else
  		render 'new'
  	end
  end

  def show
  	@admin = Admin.find(params[:id])
  end

  def edit
  	@admin = Admin.find(params[:id])
  end

  def update
  	@admin = Admin.find(params[:id])

  	if @admin.update_attributes(admin_params)
  		redirect_to @admin
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@admin = Admin.find(params[:id])
  	@admin.destroy
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

end
