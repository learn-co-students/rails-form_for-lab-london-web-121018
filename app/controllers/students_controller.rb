class StudentsController < ApplicationController
    before_action :find_class, only:[:show, :edit, :update]

    def index
        @students = SchoolClass.all
    end

    def show
        
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new
        @student.first_name = params[:student][:first_name]
        @student.last_name = params[:student][:last_name]
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        
    end

    def update
        
        @student.update(first_name: school_params[:first_name], last_name: school_params[:last_name])
        redirect_to student_path(@student)

    end

    private

    def find_class
        @student = Student.find(params[:id])
    end

    def school_params
        params.require(:student).permit(:first_name, :last_name)
    end

    
end