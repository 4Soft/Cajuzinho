class FederationsController < ApplicationController
  before_action :set_federation, only: [:show, :edit, :update, :destroy]

  
  def index
    @federations = Federation.all
  end

  def show
      @federation = Federation.find(params[:id])
  end

  
  def new
    @federation = Federation.new
  end

 
  def edit
      @federation = Federation.find(params[:id])
  end

  
  def create
    @federation = Federation.new(federation_params)

    respond_to do |format|
      if @federation.save
        format.html { redirect_to @federation, notice: 'Federação criada com sucesso.' }
        format.json { render :show, status: :created, location: @federation }
      else
        format.html { render :new }
        format.json { render json: @federation.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @federation.update(federation_params)
        format.html { redirect_to @federation, notice: 'Federação atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @federation }
      else
        format.html { render :edit }
        format.json { render json: @federation.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @federation.destroy
    respond_to do |format|
      format.html { redirect_to federations_url, notice: 'Federação deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_federation
      @federation = Federation.find(params[:id])
    end

    
    def federation_params
      params.require(:federation).permit(:formal_name, :cnpj, :site)
    end
end
