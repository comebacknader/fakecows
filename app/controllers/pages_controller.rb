class PagesController < ApplicationController
	skip_before_filter :authorize

	def home
		@products = Product.paginate(:page => params[:page], :order => 'created_at DESC')
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end
	end

	def men
		@products = Product.where(:category => "men").paginate(:page => params[:page], :order => 'created_at DESC')
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end
	end

	def women
		@products = Product.where(:category => "women").paginate(:page => params[:page], :order => 'created_at DESC')
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end
	end

	def furniture
		@products = Product.where(:category => "furniture").paginate(:page => params[:page], :order => 'created_at DESC')
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end	end

	def polyurethane
	end

end
