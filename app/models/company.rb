class Company < ActiveRecord::Base
  has_one :head #dependent: :destroy
  accepts_nested_attributes_for :head, allow_destroy: true
  belongs_to :address #dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true
  has_one :billing
  belongs_to :contract
end
