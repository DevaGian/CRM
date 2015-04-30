class Referent < ActiveRecord::Base
  VALID_ROLE = ['Legale rappresentante', 'Titolare', 'Amministratore', 'Tecnico', 'Ufficio Vendite', 'Ufficio Marketing', 'Dipendente', 'Altro']
  validates_inclusion_of :role, :in => VALID_ROLE
end
