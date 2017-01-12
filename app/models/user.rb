class User < ApplicationRecord
  attr_accessor :password, :password_confirmation

  def self.return_success
    :success
  end
end
