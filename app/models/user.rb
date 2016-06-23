class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  validates :password, presence: true

  has_secure_password

  def mood
    self.nausea < happiness ? "happy" : "sad"
  end
end
