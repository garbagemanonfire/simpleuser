class User < ActiveRecord::Base
  attr_accessible :active, :email, :firstname, :lastname
  validates :email, :firstname, :lastname, :presence => true
  validates :email, :uniqueness => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
