class PagesController < ApplicationController
	skip_before_filter :authorize

	def home
		@products = Product.order("created_at DESC")
	end

	def men
		@products = Product.where(:category => "men").order("created_at DESC")		
	end

	def women
		@products = Product.where(:category => "women").order("created_at DESC")		
	end

	def furniture
		@products = Product.where(:category => "furniture").order("created_at DESC")
	end

	def polyurethane
	end

end
