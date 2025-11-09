class InscricaosController < ApplicationController
  
  # GET /inscricaos or /inscricaos.json
  def index
    @inscricaos = Inscricao.all
    @inscricao = Inscricao.new
  end

  # GET /inscricaos/1 or /inscricaos/1.json

  # GET /inscricaos/new
  def new
    @inscricao = Inscricao.new
  end

  # GET /inscricaos/1/edit
  def edit
    @inscricao = Inscricao.find(params[:id])
  end

  # POST /inscricaos or /inscricaos.json
  def create
    @inscricao = Inscricao.new(inscricao_params)
      respond_to do |format|
      if @inscricao.save
        format.html { redirect_to inscricaos_path(@inscricao), notice: "Inscricao was successfully created." }
        format.json { render :index, status: :created}
      else
        format.html { redirect_to inscricaos_path(@inscricao), status: :unprocessable_entity }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /inscricaos/1 or /inscricaos/1.json
  def update
    @inscricao = Inscricao.new(inscricao_params)
    respond_to do |format|
      if @inscricao.update(inscricao_params)
        format.html { redirect_to admin_inscricao_path(@inscricao), notice: "Inscrição atualizada com sucesso." }
        format.json { render :show, status: :ok, location: admin_inscricao_path(@inscricao) }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscricaos/1 or /inscricaos/1.json
  def destroy
    @inscricao = Inscricao.find(params[:id])
    @inscricao.destroy!

    respond_to do |format|
      format.html { redirect_to admin_inscricaos_path, status: :see_other, notice: "Inscrição deletada com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscricao
      @inscricao = Inscricao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def inscricao_params
      params.expect(inscricao: [ :nome, :alcunha, :regiao, :contato, :data_nascimento ])
    end
end
