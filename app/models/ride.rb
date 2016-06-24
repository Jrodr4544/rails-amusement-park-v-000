class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  def take_ride
    
    if self.user.tickets < self.attraction.tickets && self.user.height < self.attraction.min_height
      "Sorry. You do not have enough tickets the #{self.attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif self.user.tickets < self.attraction.tickets
      "Sorry. You do not have enough tickets the #{self.attraction.name}."
    elsif self.user.height < self.attraction.min_height
      "Sorry. You are not tall enough to ride the #{attraction.name}."
    else
      self.user.happiness   +=  self.attraction.happiness_rating
      self.user.nausea      +=  self.attraction.nausea_rating
      self.user.tickets     -=  self.attraction.tickets
      # binding.pry
      self.user.save  
    end
    

  end
end
