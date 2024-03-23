class CepsController < ApplicationController
    before_action :set_cep, only: [:show]
  
    # GET /ceps
    def index
      @ceps = CEP.all
      render json: @ceps
    end
  
    # GET /ceps/:cep
    def show
      render json: @cep
    end
  
    private
      # Setar o CEP antes de mostrar
      def set_cep
        @cep = CEP.find_by(cep: params[:cep])
        if @cep.nil?
          render json: { error: "CEP não encontrado" }, status: :not_found
        end
      end
end
  