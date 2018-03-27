class AddressesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def create
    student = Student.find(params[:student_id])

    redirect_to student_path(student)
  end
end
