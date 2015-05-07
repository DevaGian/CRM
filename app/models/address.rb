class Address < ActiveRecord::Base
  has_one :company
  has_one :head
end
