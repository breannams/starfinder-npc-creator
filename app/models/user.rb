class User < ActiveRecord::Base
    has_secure_password
    has_many :npcs
    validates_presence_of :username, :password_confirmation
    validates_length_of :password, :in => 4..10
    validates_uniqueness_of :username

    
end