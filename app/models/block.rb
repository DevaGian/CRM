class Block < ActiveRecord::Base
  TYPES = %w['Posta elettronica', 'Spazio Web', 'SMTP', 'Pec', 'Cartella Remota', 'Backup Pec', 'Assistenza Telefonica', 'Assistenza Remota', 'Assistenza in Azienda']
  validates_inclusion_of :tipo, in: TYPES
  belongs_to :contract
  EXCLUSION = %w['', ' ']
  validates_presence_of :tipo, :cu, :q, :mensilita, :tot
end
