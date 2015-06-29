class User < ActiveRecord::Base
  has_many :goals
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}


   # Virtual attribute for authenticating by either username or email
   # This is in addition to a real persisted field like 'username'
  attr_accessor :login


  # Overwrite Devise's find_for_database_authentication method to incorporate username into login process
  # Also configures the request for password change to allow username or email

  def self.find_first_by_auth_conditions(warden_conditions)
  conditions = warden_conditions.dup
  if login = conditions.delete(:login)
    where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
  else
    if conditions[:username].nil?
      where(conditions).first
    else
      where(username: conditions[:username]).first
    end
  end
end

  #makes the username case insensitive
    validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }

end
