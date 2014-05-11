class MakesController < ApplicationController

  def index
    @makes = Make.all
  end

  def show
    @make = Make.find(params[:id])
  end

  def new
    @make = Make.new
  end

  def create
    @make = Make.new(make_params)
    if @make.save
      flash[:success] = "Made new Make!"
      redirect_to @make
    else
      render 'new'
    end
  end

  def edit
    @make = Make.find(params[:id])
  end

  def update
    @make = Make.find(params[:id])
    
    if @make.update_attributes(make_params)
      flash[:success] = "Make updated"
      redirect_to @make
    else
      render 'edit'
    end
  end

  private
    def make_params
      params.require(:make).permit(:name)
    end
end
