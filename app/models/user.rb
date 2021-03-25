class User < ActiveRecord::Base
    has_secure_password
    has_many :npcs

    validates_presence_of :username, :password, :password_confirmation
    validates_uniqueness_of :username

end