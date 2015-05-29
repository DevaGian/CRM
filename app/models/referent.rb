class Referent < ActiveRecord::Base
  VALID_ROLES = ['Legale rappresentante', 'Titolare', 'Amministratore', 'Tecnico', 'Ufficio Vendite', 'Ufficio Marketing', 'Dipendente', 'Figlio/A Titolare', 'Parente Stretto del Titolare']
  validates_inclusion_of :role, in: VALID_ROLES
  belongs_to :contract
end


