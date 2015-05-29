class WebSitesController < ApplicationController
  before_action :set_web_site, only: [:show, :edit, :update, :destroy]

  # GET /web_sites
  # GET /web_sites.json
  def index
    @web_sites = WebSite.all
  end

  # GET /web_sites/1
  # GET /web_sites/1.json
  def show
  end

  # GET /web_sites/new
  def new
    @web_site = WebSite.new
  end

  # GET /web_sites/1/edit
  def edit
  end

  # POST /web_sites
  # POST /web_sites.json
  def create
    @web_site = WebSite.new(web_site_params)

    respond_to do |format|
      if @web_site.save
        format.html { redirect_to @web_site, notice: 'Web site was successfully created.' }
        format.json { render :show, status: :created, location: @web_site }
      else
        format.html { render :new }
        format.json { render json: @web_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_sites/1
  # PATCH/PUT /web_sites/1.json
  def update
    respond_to do |format|
      if @web_site.update(web_site_params)
        format.html { redirect_to @web_site, notice: 'Web site was successfully updated.' }
        format.json { render :show, status: :ok, location: @web_site }
      else
        format.html { render :edit }
        format.json { render json: @web_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_sites/1
  # DELETE /web_sites/1.json
  def destroy
    @web_site.destroy
    respond_to do |format|
      format.html { redirect_to web_sites_url, notice: 'Web site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_site
      @web_site = WebSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_site_params
      params.require(:web_site).permit(:padre, :servizio, :descrizione, :importo, :attivazione, :mensilita)
    end
end
