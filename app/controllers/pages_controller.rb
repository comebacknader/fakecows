class PagesController < ApplicationController
	skip_before_filter :authorize

	def home
		@products = Product.all
	end

end
