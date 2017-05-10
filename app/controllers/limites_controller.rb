class LimitesController < ApplicationController
  before_action :set_limite, only: [:show, :edit, :update, :destroy]

  # GET /limites
  # GET /limites.json
  def index
    @limites = Limite.all
  end

  # GET /limites/1
  # GET /limites/1.json
  def show
  end

  # GET /limites/new
  def new
    @limite = Limite.new
  end

  # GET /limites/1/edit
  def edit
  end

  # POST /limites
  # POST /limites.json
  def create
    @limite = Limite.new(limite_params)

    respond_to do |format|
      if @limite.save
        format.html { redirect_to @limite, notice: 'Limite was successfully created.' }
        format.json { render :show, status: :created, location: @limite }
      else
        format.html { render :new }
        format.json { render json: @limite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /limites/1
  # PATCH/PUT /limites/1.json
  def update
    respond_to do |format|
      if @limite.update(limite_params)
        format.html { redirect_to @limite, notice: 'Limite was successfully updated.' }
        format.json { render :show, status: :ok, location: @limite }
      else
        format.html { render :edit }
        format.json { render json: @limite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /limites/1
  # DELETE /limites/1.json
  def destroy
    @limite.destroy
    respond_to do |format|
      format.html { redirect_to limites_url, notice: 'Limite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_limite
      @limite = Limite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def limite_params
      params.require(:limite).permit(:value, :meter_id)
    end
end
