class Company < ActiveRecord::Base
  has_one :head #dependent: :destroy
  accepts_nested_attributes_for :head
  belongs_to :address #dependent: :destroy
  accepts_nested_attributes_for :address
  has_one :billing
  belongs_to :contract
end
