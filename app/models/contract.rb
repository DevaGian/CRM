class Contract < ActiveRecord::Base
  has_one :company, dependent: :destroy
  accepts_nested_attributes_for :company
  has_one :head, through: :company
  accepts_nested_attributes_for :head
  has_one :referent
  accepts_nested_attributes_for :referent
  has_one :billing, through: :company

end