class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  # validates_presence_of :password_digest

  has_secure_password

  def mood
    self.nausea < self.happiness ? "happy" : "sad"
  end
end
