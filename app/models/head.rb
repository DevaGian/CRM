class Head < ActiveRecord::Base
  belongs_to :company
  has_one :address
  accepts_nested_attributes_for :address
end