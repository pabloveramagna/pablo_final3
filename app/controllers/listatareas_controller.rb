class ListatareasController < ApplicationController
  before_action :set_listatarea, only: [:show, :edit, :update, :destroy]

  # GET /listatareas
  # GET /listatareas.json
  def index
    @listatareas = Listatarea.all
  end

  # GET /listatareas/1
  # GET /listatareas/1.json
  def show
  end

  # GET /listatareas/new
  def new
    @listatarea = Listatarea.new
  end

  # GET /listatareas/1/edit
  def edit
  end

  # POST /listatareas
  # POST /listatareas.json
  def create
    @listatarea = Listatarea.new(listatarea_params)

    respond_to do |format|
      if @listatarea.save
        format.html { redirect_to @listatarea, notice: 'Listatarea was successfully created.' }
        format.json { render :show, status: :created, location: @listatarea }
      else
        format.html { render :new }
        format.json { render json: @listatarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listatareas/1
  # PATCH/PUT /listatareas/1.json
  def update
    respond_to do |format|
      if @listatarea.update(listatarea_params)
        format.html { redirect_to @listatarea, notice: 'Listatarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @listatarea }
      else
        format.html { render :edit }
        format.json { render json: @listatarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listatareas/1
  # DELETE /listatareas/1.json
  def destroy
    @listatarea.destroy
    respond_to do |format|
      format.html { redirect_to listatareas_url, notice: 'Listatarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listatarea
      @listatarea = Listatarea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listatarea_params
      params.require(:listatarea).permit(:nombre, :desde, :hasta, :responsable, :realizado, :observacion)
    end
end
