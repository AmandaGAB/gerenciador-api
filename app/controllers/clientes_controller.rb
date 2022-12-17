class ClientesController < ApplicationController
 def index
    render json: Cliente.all, status: :ok
 end
end