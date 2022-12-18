class ManutencoesController < ApplicationController
  before_action :set_manutencao, only: [:show, :update, :destroy]

  # GET /funcionarios
  def index
    @manutencoes = Manutencao.all

    render json: @manutencoes
  end

  # GET /funcionarios/1
  def show
    render json: @manutenco
  end

  # POST /funcionarios
  def create
    @manutenco = Manutencao.new(manutenco_params)

    if @manutenco.save
      render json: @manutenco, status: :created, location: @manutencao
    else
      render json: @manutenco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /funcionarios/1
  def update
    if @manutencao.update(manutencao_params)
      render json: @manutencao
    else
      render json: @manutencao.errors, status: :unprocessable_entity
    end
  end

  # DELETE /funcionarios/1
  def destroy
    @manutencao.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manutencao
      @manutencao = Manutencao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manutenco_params
      params.require(:manutenco).permit(:cliente_id, :funcionario_id, :dataInicio, :dataTermino, :status)
    end
end