class User < ApplicationRecord
# Include default devise modules. Others available are:
# :confirmable, :lockable, :timeoutable and :omniauthable
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

    has_many :posts

    has_one :profile, dependent: :destroy
    after_create :init_profile
  
    def init_profile
      self.create_profile!
    end
    
end