class User < ActiveRecord::Base
  
  before_save :encrypt_password, if: :password_changed?
  
  def encrypt_password
    self.password = BCrypt::Password.create(self.password)
  end
  
  def authenticate(plain_password)
    encrypted_password = BCrypt::Password.new(self.password)
    encrypted_password.is_password?(plain_password)
  end
end
