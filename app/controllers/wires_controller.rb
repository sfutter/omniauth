class WiresController < ApplicationController
  def index
    @wires = Wire.all
  end

  def new
  	@wire = Wire.new
  end

  def create
  	@wire = Wire.new(params[:wire].permit(:title, :time, :category))

  	if @wire.save
      
  	redirect_to @wire
    else
      render 'new'
    end
  end

  def show
  	@wire = Wire.find(params[:id])
  end


  def edit
    @wire = Wire.find(params[:id])
  end

  def update
    @wire = Wire.find(params[:id])
   
    if @wire.update(params[:wire].permit(:title, :time, :category))
      redirect_to @wire
    else
      render 'edit'
    end
  end

  def destroy
    @wire = Wire.find(params[:id])
    @wire.destroy
   
    redirect_to wires_path
  end


  private
  def post_params
    params.require(:wire).permit(:title, :time, :category)
  end

end
