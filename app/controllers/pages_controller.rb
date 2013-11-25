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
		@title = "Men's Animal Free Fashion"
		@products = Product.where(:category => "men").paginate(:page => params[:page], :order => 'created_at DESC')
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end
	end

	def women
		@title = "Women's Animal Free Fashion"		
		@products = Product.where(:category => "women").paginate(:page => params[:page], :order => 'created_at DESC')
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end
	end

	def about
		@title = "The FAKE COW Mission"
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end		
	end

	def health
		@title = "Living a Healthy Life"
		@juicers = Juicer.order("created_at DESC").limit(3)
	end

	def recipes
		@title = "Animal Free Recipes"
	end


	def furniture
		@title = "Animal Free Furniture"		
		@products = Product.where(:category => "furniture").paginate(:page => params[:page], :order => 'created_at DESC')
		respond_to do |format|
	      format.html
	      format.js # add this line for your js template
	    end	
	end


	def polyurethane
		@title = "What Is Polyurethane?"
	end

	def faux
		@title = "What Is Faux Leather?"
	end

	def vegan
		@title = "What Is Vegan Leather?"
	end
	
end
