class PortosController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
	
	layout "portfolio"
	access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :edit, :sort]}, admin: :all
	
	def index
		@portfolio_items = Porto.by_position
	end

	def sort
	params[:order].each do |key, value|
      	Portos.find(value[:id]).update(position: value[:position])
      end
    end

	def angular
		@portfolio_items = Porto.angular
	end

	def sort
		params[:order].each do |key, value|
			Porto.find(value[:id]).update(position: value[:position])
		end 
		render nothing: true
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
									:main_image,
									:thumb_image,
									technologies_attributes: [:name]
									)
		end

		def set_portfolio_item 
			@portfolio_item = Porto.find(params[:id])
		end

end




