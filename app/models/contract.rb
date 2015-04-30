class Contract < ActiveRecord::Base
  has_one :company
  accepts_nested_attributes_for :company
  has_one :head, through: :company
  has_one :referent
  accepts_nested_attributes_for :referent
  has_one :billing, through: :company

end
