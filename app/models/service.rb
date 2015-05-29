class Service < ActiveRecord::Base
  #modello che gestisce mail personali, spazioweb, blocchi smtp, pec, cartelle ftp, backup pec, assistenza tel/rem/in azienda
  belongs_to :contract
end
