class User < ActiveRecord::Base
    validates_presence_of :email, :password
    has_many :npcs
end