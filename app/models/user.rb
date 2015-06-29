class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]


   # Virtual attribute for authenticating by either username or email
   # This is in addition to a real persisted field like 'username'
  attr_accessor :login


  # Overwrite Devise's find_for_database_authentication method to incorporate username into login process
  # Also configures the request for password change to allow username or email

  before_create :create_login

    def create_login
      email = self.email.split(/@/)
      login_taken = User.where(:login => email[0]).first
      unless login_taken
        self.login = email[0]
      else
        self.login = self.email
      end
    end

  #makes the username case insensitive
    validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }

end
