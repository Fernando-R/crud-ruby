class CrudetesController < ApplicationController
  before_action :set_crudete, only: [:show, :edit, :update, :destroy]

  # GET /crudetes
  # GET /crudetes.json
  def index
    @crudetes = Crudete.all
  end

  # GET /crudetes/1
  # GET /crudetes/1.json
  def show
  end

  # GET /crudetes/new
  def new
    @crudete = Crudete.new
  end

  # GET /crudetes/1/edit
  def edit
  end

  # POST /crudetes
  # POST /crudetes.json
  def create
    @crudete = Crudete.new(crudete_params)

    respond_to do |format|
      if @crudete.save
        format.html { redirect_to @crudete, notice: 'Crudete was successfully created.' }
        format.json { render :show, status: :created, location: @crudete }
      else
        format.html { render :new }
        format.json { render json: @crudete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crudetes/1
  # PATCH/PUT /crudetes/1.json
  def update
    respond_to do |format|
      if @crudete.update(crudete_params)
        format.html { redirect_to @crudete, notice: 'Crudete was successfully updated.' }
        format.json { render :show, status: :ok, location: @crudete }
      else
        format.html { render :edit }
        format.json { render json: @crudete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crudetes/1
  # DELETE /crudetes/1.json
  def destroy
    @crudete.destroy
    respond_to do |format|
      format.html { redirect_to crudetes_url, notice: 'Crudete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crudete
      @crudete = Crudete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crudete_params
      params.require(:crudete).permit(:nome, :email)
    end
end
