class Contract < ActiveRecord::Base
  has_one :company, dependent: :destroy
  accepts_nested_attributes_for :company, allow_destroy: true
  has_one :head, through: :company
  accepts_nested_attributes_for :head, allow_destroy: true
  has_one :referent
  accepts_nested_attributes_for :referent, allow_destroy: true
  has_one :billing, through: :company
  accepts_nested_attributes_for :head, allow_destroy: true
  has_many :web_sites
  has_many :services
  has_many :blocks
  has_many :seos
  has_many :suites
  has_many :costumer_mails
  has_many :services
  accepts_nested_attributes_for :services, reject_if: :all_blank

end