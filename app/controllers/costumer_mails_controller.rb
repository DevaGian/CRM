class CostumerMailsController < ApplicationController
  before_action :set_costumer_mail, only: [:show, :edit, :update, :destroy]

  # GET /costumer_mails
  # GET /costumer_mails.json
  def index
    @costumer_mails = CostumerMail.all
  end

  # GET /costumer_mails/1
  # GET /costumer_mails/1.json
  def show
  end

  # GET /costumer_mails/new
  def new
    @costumer_mail = CostumerMail.new
  end

  # GET /costumer_mails/1/edit
  def edit
  end

  # POST /costumer_mails
  # POST /costumer_mails.json
  def create
    @costumer_mail = CostumerMail.new(costumer_mail_params)

    respond_to do |format|
      if @costumer_mail.save
        format.html { redirect_to @costumer_mail, notice: 'Costumer mail was successfully created.' }
        format.json { render :show, status: :created, location: @costumer_mail }
      else
        format.html { render :new }
        format.json { render json: @costumer_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costumer_mails/1
  # PATCH/PUT /costumer_mails/1.json
  def update
    respond_to do |format|
      if @costumer_mail.update(costumer_mail_params)
        format.html { redirect_to @costumer_mail, notice: 'Costumer mail was successfully updated.' }
        format.json { render :show, status: :ok, location: @costumer_mail }
      else
        format.html { render :edit }
        format.json { render json: @costumer_mail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costumer_mails/1
  # DELETE /costumer_mails/1.json
  def destroy
    @costumer_mail.destroy
    respond_to do |format|
      format.html { redirect_to costumer_mails_url, notice: 'Costumer mail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costumer_mail
      @costumer_mail = CostumerMail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costumer_mail_params
      params.require(:costumer_mail).permit(:nome, :dominio, :mb, :mensilita)
    end
end
