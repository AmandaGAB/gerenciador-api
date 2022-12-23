class EquipamentosController < ApplicationController
  before_action :set_funcionario, only: [:show, :update, :destroy]

  # GET /funcionarios
  def index
    @equipamentos = Equipamento.all

    render json: @equipamentos
  end

  # GET /equipamentos/1
  def show
    render json: @equipamento
  end

  # POST /equipamentos
  def create
    @equipamento = Equipamento.new(equipamento_params)

    if @equipamento.save
      render json: @equipamento, status: :created, location: @equipamento
    else
      render json: @equipamento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /equipamentos/1
  def update
    if @equipamento.update(equipamento_params)
      render json: @equipamento
    else
      render json: @equipamento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /equipamentos/1
  def destroy
    @equipamento.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_equipamento
    @equipamento = Equipamento.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def equipamento_params
    params.require(:equipamento).permit(:equipamento_id, :descricao, :modelo, :tipo, :cliente_id, :manutencao_id)
  end
end