class SchoolClassesController < ApplicationController
    before_action :find_class, only:[:show, :edit, :update]

    def index
        @school_classes = SchoolClass.all
    end

    def show
        
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.new
        @school_class.title = params[:school_class][:title]
        @school_class.room_number = params[:school_class][:room_number]
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        # byebug
    end

    def update
        #byebug        
        @school_class.update(title: school_params[:title], room_number: school_params[:room_number])
        redirect_to school_class_path(@school_class)
    end

    private

    def find_class
        @school_class = SchoolClass.find(params[:id])
    end

    def school_params
        params.require(:school_class).permit(:title, :room_number)
    end

    
end