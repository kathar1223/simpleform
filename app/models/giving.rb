class Giving < ActiveRecord::Base
  
  
  
  validates_presence_of :name, :message => "Put some address please" 
end
