class AssessorsController < ApplicationController
  before_action :set_assessor, only: [:show, :edit, :update, :destroy]

  # GET /assessors
  # GET /assessors.json
  def index
    @assessors = Assessor.all
  end

  # GET /assessors/1
  # GET /assessors/1.json
  def show
    @assessor = Assessor.find(params[:id])
  end

  # GET /assessors/new
  def new
    @assessor = Assessor.new
  end

  # GET /assessors/1/edit
  def edit
    @assessor = Assessor.find(params[:id])
  end

  # POST /assessors
  # POST /assessors.json
  def create
    @assessor = Assessor.new(assessor_params)

    respond_to do |format|
      if @assessor.save
        format.html { redirect_to @assessor, notice: 'Assessor was successfully created.' }
        format.json { render :show, status: :created, location: @assessor }
      else
        format.html { render :new }
        format.json { render json: @assessor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessors/1
  # PATCH/PUT /assessors/1.json
  def update
    respond_to do |format|
      if @assessor.update(assessor_params)
        format.html { redirect_to @assessor, notice: 'Assessor was successfully updated.' }
        format.json { render :show, status: :ok, location: @assessor }
      else
        format.html { render :edit }
        format.json { render json: @assessor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessors/1
  # DELETE /assessors/1.json
  def destroy
    @assessor.destroy
    respond_to do |format|
      format.html { redirect_to assessors_url, notice: 'Assessor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessor
      @assessor = Assessor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessor_params
      params.require(:assessor).permit(:role)
    end
end
