class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    # @school_class = SchoolClass.create(title: params[:title], room_number: params[:room_number])
    @school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))

    redirect_to school_class_path(@school_class)
  end


  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = Article.find(params[:id])
    @school_class.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@school_class)
  end

end
