class PortosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
	
	layout "portfolio"
	
	def index
		@portfolio_items = Porto.all
	end

	def angular
		@portfolio_items = Porto.angular
	end

	def new 
		@portfolio_item = Porto.new
		3.times do @portfolio_item.technologies.build end 
	end

	def create 
		@portfolio_item = Porto.new(porto_params)

	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portos_path, notice: 'Portfolio Item was successfully created.' }
	      else
	        format.html { render :new }
	      end
	    end
	end

	def edit
		3.times do @portfolio_item.technologies.build end 
	end

	def update

		respond_to do |format|
	      if @portfolio_item.update(porto_params)
	        format.html { redirect_to porto_path(@portfolio_item.id), notice: 'Portfolio Item was successfully updated.' }
	      else
	        format.html { render :edit }
	      end
	    end
	end

	def show
		#binding.pry
	end

	def destroy 

		@portfolio_item.destroy

		respond_to do |format| 
			format.html { redirect_to portos_url, notice: "Portfolio item was removed"}
		end
	end
	private 
		def porto_params 
		params.require(:porto).permit(
									:title, 
									:subtitle, 
									:body, 
									technologies_attributes: [:name]
									)
		end

		def set_portfolio_item 
			@portfolio_item = Porto.find(params[:id])
		end

end




