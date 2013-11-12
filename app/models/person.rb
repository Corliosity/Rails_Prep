class Person < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :name
  has_secure_password
  
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  
  validates_presence_of :password, :on => :create
  validates :email, :uniqueness => true, :presence => true, :format => EMAIL_REGEX
end
