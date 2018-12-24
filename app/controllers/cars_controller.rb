class CarsController < ApplicationController
def index
  @cars = Car.all
end
def new
  @car = Car.new
end

def create
  @car = Car.new(car_params)
  if @book.save
    redirect_to @car, notice: "新車を登録しました。"
  else
    render :new
  end
end

def show
  @car= Car.find(params[:id])
end
private

def car_params
  params.reqire(:car).permit(:name, :price, :release_date, :description)
end

end
