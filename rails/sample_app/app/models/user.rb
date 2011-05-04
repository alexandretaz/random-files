# == Schema Information
# Schema version: 20110416101813
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  attr_accessor :password
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :presence => true,
                   :length => { :maximum => 50 }
  validates :email, :presence => true,
                    :uniqueness => { :case_sensitive => false},
                    :format => { :with => email_regex}
  validates :password, :presence => true,
                       :confirmation => true,
                       :length => { :within => 6..40 }
  before_save :encrypt_password
  def has_password?(submitted_password)
  end
  private
  def encrypt_password
    self.encrypt_password = encrypt(password)
  end
  def encrypt(string)
    string 
  end

end
