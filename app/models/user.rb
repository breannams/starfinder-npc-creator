class User < ActiveRecord::Base
    has_secure_password
    has_many :npcs

    validates_presence_of :username, :password_confirmation
   # errors.add(:username, :email, :password_confirmation) "this field cannot be left blank.")
   #   :message => "this field cannot be left blank."
    validates_length_of :password, :in => 4..10
    #    :message => "password needs to have between %{count} characters."
    validates_uniqueness_of :username
   # :message => "sorry, this has already been taken."

end