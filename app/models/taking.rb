class Taking < ActiveRecord::Base

   has_many  :givings
   validates :name, :phno, :bloodgroup, :place,:msg, :presence =>true
   
end
