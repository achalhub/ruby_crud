class ListaContatosController < ApplicationController
  before_action :set_lista_contato, only: %i[ show edit update destroy ]

  # GET /lista_contatos or /lista_contatos.json
  def index
    @lista_contatos = ListaContato.all
  end

  # GET /lista_contatos/1 or /lista_contatos/1.json
  def show
  end

  # GET /lista_contatos/new
  def new
    @lista_contato = ListaContato.new
  end

  # GET /lista_contatos/1/edit
  def edit
  end

  # POST /lista_contatos or /lista_contatos.json
  def create
    @lista_contato = ListaContato.new(lista_contato_params)

    respond_to do |format|
      if @lista_contato.save
        format.html { redirect_to lista_contato_url(@lista_contato), notice: "Lista contato was successfully created." }
        format.json { render :show, status: :created, location: @lista_contato }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lista_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_contatos/1 or /lista_contatos/1.json
  def update
    respond_to do |format|
      if @lista_contato.update(lista_contato_params)
        format.html { redirect_to lista_contato_url(@lista_contato), notice: "Lista contato was successfully updated." }
        format.json { render :show, status: :ok, location: @lista_contato }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lista_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_contatos/1 or /lista_contatos/1.json
  def destroy
    @lista_contato.destroy

    respond_to do |format|
      format.html { redirect_to lista_contatos_url, notice: "Lista contato was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_contato
      @lista_contato = ListaContato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lista_contato_params
      params.require(:lista_contato).permit(:Primeiro_Nome, :Ultimo_Nome, :Email, :Telefone)
    end
end
