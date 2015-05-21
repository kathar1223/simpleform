class EmployeesController < ApplicationController
  
  def new
    @giving = Giving.new
    @taking = Taking.new
  @comment=Comment.new
   @see=Comment.all
   
  
  end
  
  def register
    
    @giving = Giving.new(params.require(:giving).permit(:name, :phno, :bloodgroup, :place))
   
    
    
  respond_to do |format|
    if @giving.save
      
    
     
      format.html { redirect_to new_employee_path, notice: 'Post was successfully created.' }
        format.json { render json: @giving, status: :created, location: @giving }
      
        else
        format.html { render action: "show" }
        format.json { render json: @giving.errors, status: :unprocessable_entity }
    end
     
    end
    
    
 

end
def asker
    
    @taking = Taking.new(params.require(:taking).permit(:name, :phno, :bloodgroup, :place, :msg))
   
  
    
  respond_to do |format|
    if @taking.save
       
       products=Taking.select("max(id),name,phno,bloodgroup,msg")
 
 products.each do|p|
  $pa=p.phno
  $nam=p.name
  $phn=p.bloodgroup
  $ms=p.msg
 end
 info=Giving.select("phno,name").where("bloodgroup = '#{$phn}'")
 @@lst=info
 info.each do |a|
   puts "#{a.phno}"
    require 'twilio-ruby'

accountSID = 'AC9982a7e59f53a6093dc486e3f65de421'
authToken = '6532f499294818c0cf9b17e404ccae4c'
@client = Twilio::REST::Client.new accountSID, authToken

from ='+17605238906'


friends = { '+91' + a.phno => "sandeep"}


message = @client.account.messages.create(
  
                                            :from =>from,
                                            :to => '+91'+ a.phno,
                                            :body => "hey" +a.name+$ms 
  
  
  )
 end


      format.html { redirect_to employees_show_path, notice: 'Post was successfully created.' }
        format.json { render json: @taking, status: :created, location: @taking }
      
        else
        format.html { render action: "new" }
        format.json { render json: @taking.errors, status: :unprocessable_entity }
    end
     
    end
    
   
end

def show
 
 @st=@@lst;
 
end
def comment
  @comment=Comment.new(params.require(:comment).permit(:name, :msg))
   respond_to do |format|
    if @comment.save
      
       format.html { redirect_to new_employee_path, notice: 'Post was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
        else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      
  
end

end




end



end
