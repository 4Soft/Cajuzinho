class EjsController < ApplicationController

	def index
		@ej = Ej.all
	end

	def new
		@ej = Ej.new
	end

	def create
		@ej = Ej.new(ej_params)

		if @ej.save
			redirect_to @ej
		else
			render 'new'
		end
	end

	def edit
		@ej = Ej.find(params[:id])
	end

	def update
		@ej = Ej.find(params[:id])

		if @ej.update(ej_params)
			redirect_to @ej
		else
			render 'edit'
		end
	end

	def show
		@ej = Ej.find(params[:id])
	end


	private
	  def ej_params
	    params.require(:ej).permit(:formal_name, :cnpj, :site)
	  end
end
