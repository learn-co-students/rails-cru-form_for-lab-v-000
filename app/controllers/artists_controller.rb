class ArtistsController < ApplicationController
  def new
    #render new form
    @student = Student.new
  end

  def create
    #create new Object
    #reroute to show page
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    #query object by id
    #render show page with object specific info
    @student = Student.find(params[:id])
  end

  def edit
    #query object by id
    @student = Student.find(params[:id])
    #render edit form
  end

  def update
    #query object by id
    #update that object
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
    #reroute to show page
  end
end
