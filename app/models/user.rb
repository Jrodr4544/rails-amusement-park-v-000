class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  # validates :password, presence: true
 # validates :password,  :confirmation => true,  :unless => "password.blank?"

  has_secure_password


  def mood
    self.nausea < self.happiness ? "happy" : "sad"
  end
end
