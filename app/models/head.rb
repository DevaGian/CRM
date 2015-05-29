class Head < ActiveRecord::Base
  belongs_to :company, foreign_key: 'address_id'
  belongs_to :address, foreign_key: 'address_id'
  accepts_nested_attributes_for :address, allow_destroy: true
end