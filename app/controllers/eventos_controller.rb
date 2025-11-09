# GET /eventos or /eventos.json
class EventosController < ApplicationController
  before_action :set_evento, only: [:show, :edit, :update, :destroy]
  # GET /eventos or /eventos.json
  def index
    @eventos = Evento.all
  end

  # GET /eventos/1 or /eventos/1.json
  def show
    @eventos = Evento.all
    @evento = Evento.find(params[:id])
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
  end

  # GET /eventos/1/edit
  def edit
    @evento = Evento.find(params[:id])
  end

  # POST /eventos or /eventos.json
  def create
    @evento = Evento.new(evento_params)

    respond_to do |format|
      if @evento.save
        format.html { redirect_to admin_evento_path(@evento), notice: "Evento was successfully created." }
        format.json { render :show, status: :ok }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventos/1 or /eventos/1.json
  def update
    @evento = Evento.new(evento_params)
    respond_to do |format|
      if @evento.update(evento_params)
        format.html { redirect_to admin_evento_path(@evento), notice: "Evento was successfully updated." }
        format.json { render :show, status: :ok, location: admin_evento_path(@evento)}
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventos/1 or /eventos/1.json
  def destroy
    @evento.destroy!

    respond_to do |format|
      format.html { redirect_to eventos_path, status: :see_other, notice: "Evento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def evento_params
      params.expect(evento: [ :nome, :descricao, :local, :data, :link_ingresso, :image ])
    end
end
