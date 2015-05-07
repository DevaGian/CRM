class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :edit, :update, :destroy]

  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    @company = Company.find_by_contract_id(@contract.id)
    @head = Head.find_by_company_id(@company.id)
    @company_address = Address.find_by_id(@company.address_id)
    @head_address = Address.find_by_id(@head.address_id)
  end

  # GET /contracts/new
  def new
    @contract = Contract.new
    @contract.build_company
    @contract.company.build_head
    @contract.company.build_address
    @contract.company.head.build_address

    #@company = Company.new
    #company.address.build
    #head = company.head.build
    #head.address.build
    #@contract.referent.build
  end

  # GET /contracts/1/edit
  def edit
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)

    respond_to do |format|
      if @contract.save
        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_contract
    @contract = Contract.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def contract_params
    params.require(:contract).
        permit(:company_id,
               :referent_id,
               :data,
               :activation_data,
               company_attributes:
                   [:ragione_sociale,
                    :piva,
                    :phone_number,
                    :fax,
                    :mail,
                    :iban,
                    head_attributes:
                        [:name,
                         :surname,
                         :born_date,
                         :born_place,
                         :cod_fiscale,
                         :document_type,
                         :document_number,
                         :document_date,
                         address_attributes:
                             [:route,
                              :number,
                              :cap,
                              :prov,
                              :city]],
                    address_attributes:
                        [:route,
                         :number,
                         :cap,
                         :prov,
                         :city]
                   ]
              )
  end
end
