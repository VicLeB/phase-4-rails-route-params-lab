class StudentsController < ApplicationController

  def index
    students = Student.all
    students.select(params[{first_name || last_name}])
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
