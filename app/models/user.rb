class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, 
                      :confirmed_at, :confirmation_token, :confirmation_sent_at
  # attr_accessible :title, :body

  validates_presence_of :username
  validates_uniqueness_of :username, :email, :case_sensitive => false

end