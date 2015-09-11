class User < ActiveRecord::Base
	has_many :addresses
  accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :name, :email
end
