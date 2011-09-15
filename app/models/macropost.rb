class Macropost < ActiveRecord::Base
  belongs_to :user
  
  validates :location, :presence => true 
  validates :title , :presence => true ,
                     :length => { :within => 1..140 }
  
  # returns a hash of #{count} macroposts with the most recent one first                   
  def self.fetch_posts( pagename , count = 10 )
    
  end
end
