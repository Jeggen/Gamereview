class User < ActiveRecord::Base
  acts_as_token_authenticatable
  # Note: you can include any module you want. If available,
  # token authentication will be performed before any other
  # Devise authentication method.
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
end
