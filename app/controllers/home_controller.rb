class HomeController < ApplicationController
	def index
		@featured = Product.order("RANDOM()").first
	end
end
