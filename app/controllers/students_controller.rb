class StudentsController < ApplicationController
  def home
    @student = Student.new
  end
  def create
  @student = Student.new(params.require(:student).permit(:firstname, :lastname))
    @student.save
    if @student.save
      redirect_to @student
    end
  end
  
end
