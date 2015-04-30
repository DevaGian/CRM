class Company < ActiveRecord::Base
  has_one :head
  accepts_nested_attributes_for :head
  has_one :address
  accepts_nested_attributes_for :address
  has_one :billing
  belongs_to :contract
end
