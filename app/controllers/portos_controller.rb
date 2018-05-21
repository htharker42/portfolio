class PortosController < ApplicationController
	def index
		@portfolio_items = Porto.all 
	end
end
