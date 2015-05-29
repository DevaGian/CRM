class SeosController < ApplicationController
  before_action :set_seo, only: [:show, :edit, :update, :destroy]

  # GET /seos
  # GET /seos.json
  def index
    @seos = Seo.all
  end

  # GET /seos/1
  # GET /seos/1.json
  def show
  end

  # GET /seos/new
  def new
    @seo = Seo.new
  end

  # GET /seos/1/edit
  def edit
  end

  # POST /seos
  # POST /seos.json
  def create
    @seo = Seo.new(seo_params)

    respond_to do |format|
      if @seo.save
        format.html { redirect_to @seo, notice: 'Seo was successfully created.' }
        format.json { render :show, status: :created, location: @seo }
      else
        format.html { render :new }
        format.json { render json: @seo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seos/1
  # PATCH/PUT /seos/1.json
  def update
    respond_to do |format|
      if @seo.update(seo_params)
        format.html { redirect_to @seo, notice: 'Seo was successfully updated.' }
        format.json { render :show, status: :ok, location: @seo }
      else
        format.html { render :edit }
        format.json { render json: @seo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seos/1
  # DELETE /seos/1.json
  def destroy
    @seo.destroy
    respond_to do |format|
      format.html { redirect_to seos_url, notice: 'Seo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seo
      @seo = Seo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seo_params
      params.require(:seo).permit(:tipo, :parole, :importo, :attivazione, :mensilita)
    end
end
