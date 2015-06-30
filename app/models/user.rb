class User < ActiveRecord::Base
  has_many :goals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  #makes the email case insensitive
  # conditions[:email].downcase! if conditions[:email]
  # where(conditions.to_hash).first

  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }

   # Virtual attribute for authenticating by either username or email
   # This is in addition to a real persisted field like 'username'
   attr_accessor :login


  # Overwrite Devise's find_for_database_authentication method to incorporate username into login process
  # Also configures the request for password change to allow username or email

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions.to_hash).first
    end
  end


end
