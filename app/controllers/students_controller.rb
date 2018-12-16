class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to "/student/#{Student.last.id}"
  end



end
