class User < ActiveRecord::Base
	has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # USED FOR PROFILE PICTURE: LIBRARY
  include Gravtastic
	gravtastic :size => 50,
						 :default => 'mm'
end
