class PortosController < ApplicationController
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
		@portfolio_item = Porto.find(params[:id])
	end

	def update
		@portfolio_item = Porto.find(params[:id])

		respond_to do |format|
	      if @portfolio_item.update(porto_params)
	        format.html { redirect_to porto_path(@portfolio_item.id), notice: 'Portfolio Item was successfully updated.' }
	      else
	        format.html { render :edit }
	      end
	    end
	end

	def show
		@portfolio_item = Porto.find(params[:id])
	end

	def destroy 
		@portfolio_item = Porto.find(params[:id])

		@portfolio_item.destroy

		respond_to do |format| 
			format.html { redirect_to portos_url, notice: "Portfolio item was removed"}
		end
	end
end


def porto_params 
	params.require(:porto).permit(:title, :subtitle, :body, technologies_attributes: [:name])
end
